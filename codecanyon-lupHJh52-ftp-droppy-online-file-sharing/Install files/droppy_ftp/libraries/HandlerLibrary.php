<?php

require_once dirname(__FILE__) . '/SettingsLibrary.php';

class HandlerLibrary
{
    protected $CI;

    private $_settings, $_config, $_ftp;

    function __construct()
    {
        $this->CI =& get_instance();

        $settings = new SettingsLibrary();
        $this->_settings = (object) $settings->_settings['ftp'];

        $this->_config = array(
            'hostname' => $this->_settings->host,
            'username' => $this->_settings->username,
            'password' => $this->_settings->password,
            'port'     => $this->_settings->port,
            'debug'    => TRUE
        );

        if($this->_settings->type == 'ftp')
        {
            $this->CI->load->library('ftp');

            $this->_ftp = $this->CI->ftp;
        }
        elseif($this->_settings->type == 'sftp')
        {
            require_once dirname(__FILE__) . '/SftpLibrary.php';
            $this->CI->load->library('SftpLib');

            $this->_ftp = $this->CI->sftplib;

            $this->_config['key']        = $this->_settings->key;
            $this->_config['method']     = $this->_settings->method;
            $this->_config['passphrase'] = $this->_settings->passphrase;
        }

        try {
            $this->_ftp->connect($this->_config);
        } catch(Exception $e) {
            $this->CI->logging->log('[FTP][ERROR] ' . $e);
        }
    }

    /**
     * Upload file to ftp storage
     *
     * @param $upload_id
     * @param $file_path
     * @param $file_name
     * @param int $encrypt
     * @return bool
     */
    public function upload($upload_id, $file_path, $file_name, $encrypt = 0)
    {
        $this->CI->load->library('CompleteHandler');

        $dirpath = dirname($file_name);

        $this->CI->logging->log('[FTP] Start upload of ' . $file_name);

        try {
            $list_files = $this->_ftp->list_files($dirpath);
            if($list_files === false || count($list_files) === 0) {
                $this->_ftp->mkdir($this->_settings->remote_path . $dirpath);
            }
        } catch(Exception $e) {
            $this->CI->logging->log('[FTP][ERROR] ' . $e);
        }

        if($encrypt) {
            $encryptKey = $this->CI->completehandler->encryptFile($file_path);

            $this->CI->uploads->updateEncrypt($encryptKey, $upload_id);
        }

        try {
            if ($this->_ftp->upload($file_path, $this->_settings->remote_path . $file_name, 'auto')) {
                $this->_ftp->close();

                return true;
            }
        } catch(Exception $e) {
            $this->CI->logging->log('[FTP][ERROR] ' . $e);
        }
    }

    /**
     * Download file to client directly
     *
     * @param $upload_id
     * @param $file_name
     * @param $file_path
     * @param $encrypt
     * @param $size
     */
    public function download($upload_id, $file_name, $file_path, $encrypt = 0, $size = 0) {
        $upload      = $this->CI->uploads->getByUploadID($upload_id);
        $remote_path = $this->_settings->remote_path . $file_path;

        // Don't keep the browser waiting
        session_write_close();

        if ($this->_settings->type == 'sftp') {
            $size = $this->_ftp->getSize($remote_path);
        }

        // Send download headers
        header('Content-Type: application/octet-stream');
        header('Content-Transfer-Encoding: binary');
        header('Content-Disposition: attachment; filename="' . $file_name . '"');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Content-Length: ' . $size);

        $this->CI->logging->log("[FTP][DOWNLOAD] Downloading file with content-length $size from $remote_path");

        if ($encrypt) {
            $temp_path = $this->CI->config->item('upload_dir') . 'temp/' . random_string('alnum', 32) . '_' . $file_name;
            $decrypt_temp_path = $this->CI->config->item('upload_dir') . 'temp/decrypt_' . random_string('alnum', 32) . '_' . $file_name;

            $this->CI->logging->log("[FTP][DOWNLOAD] Encryption enabled, temp storing file at $temp_path");

            if($this->_ftp->download($remote_path, $temp_path)) {
                $this->CI->logging->log("[FTP][DOWNLOAD] Downloaded encrypted file to $temp_path, starting decrypting...");

                $this->CI->load->library('CompleteHandler');
                $this->CI->completehandler->decryptFile($temp_path, $decrypt_temp_path, $upload['encrypt']);

                $this->CI->logging->log("[FTP][DOWNLOAD] Decrypted file at $decrypt_temp_path");

                unlink($temp_path);

                $this->CI->logging->log("[FTP][DOWNLOAD] Removed $temp_path, starting download to client from $decrypt_temp_path");

                if (ob_get_level()) {
                    ob_end_clean();
                }

                readfile($decrypt_temp_path);


                $this->CI->logging->log("[FTP][DOWNLOAD] File $decrypt_temp_path downloaded, starting to remove temp file from server");
                unlink($decrypt_temp_path);
            }
        }
        else
        {
            if ($this->_settings->type == 'ftp')
            {
                $this->CI->logging->log("[FTP][DOWNLOAD] Starting direct FTP download");

                $this->CI->logging->log("[FTP][DOWNLOAD] " . 'ftp://' . $this->_settings->username . ':password-hidden@' . $this->_settings->host . '/' . $remote_path);
                if (ob_get_level()) {
                    ob_end_clean();
                }

                $this->_ftp->download($remote_path, 'php://output', '');
            }
            elseif ($this->_settings->type == 'sftp')
            {
                $this->CI->logging->log("[SFTP][DOWNLOAD] Starting direct FTP download from $remote_path");

                $this->_ftp->directDownload($remote_path);
            }
        }
    }

    /**
     * Delete file from ftp storage
     *
     * @param $file_name
     * @return bool
     */
    public function delete($file_name) {
        if (!pathinfo($file_name, PATHINFO_EXTENSION)) {
            return $this->_ftp->delete_dir($this->_settings->remote_path . $file_name);
        } else {
            return $this->_ftp->delete_file($this->_settings->remote_path . $file_name);
        }
    }
}