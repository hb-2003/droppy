<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property receivers $receivers
 * @property downloads $downloads
 * @property completehandler $completehandler
 */
class Handler extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
    }

    /**
     * Health check endpoint (JSON).
     * GET handler/health
     */
    public function health()
    {
        header('Content-Type: application/json');
        header('Cache-Control: no-store, no-cache, must-revalidate, max-age=0');

        $db_ok = null;
        try {
            $this->load->database();
            $row = $this->db->query('SELECT 1 AS ok')->row_array();
            $db_ok = isset($row['ok']) && (int) $row['ok'] === 1;
        } catch (Exception $e) {
            $db_ok = false;
        }

        echo json_encode([
            'ok'   => true,
            'app'  => 'droppy',
            'time' => time(),
            'php'  => PHP_VERSION,
            'db'   => $db_ok,
        ]);
    }

    /**
     * Return translation items in json
     */
    public function getJsTranslation()
    {
        $this->lang->load('main_lang', $this->session->userdata('language'));

        $translation = array(
            'download_started'  => $this->lang->line('download_started'),
            'fill_fields'       => $this->lang->line('fill_fields'),
            'upload_error'      => $this->lang->line('upload_error'),
            'wrong_pass'        => $this->lang->line('wrong_pass'),
            'file_blocked'      => $this->lang->line('file_blocked'),
            'max_files'         => $this->lang->line('max_files'),
            'copy_url'          => $this->lang->line('copy_url'),
            'seconds'           => $this->lang->line('msg_seconds'),
            'minutes'           => $this->lang->line('msg_minutes'),
            'hours'             => $this->lang->line('msg_hours'),
            'remaining'         => $this->lang->line('msg_remaining'),
            'uploaded_of'       => $this->lang->line('uploaded_of'),
            'are_sure'          => $this->lang->line('are_you_sure'),
            'too_large'         => $this->lang->line('file_too_large'),
            'message_sent'      => $this->lang->line('message_sent'),
            'invalid_email'     => $this->lang->line('invalid_email'),
            'ok'                => $this->lang->line('ok'),
            'recipient_exists'  => $this->lang->line('recipient_exists'),
            'upload_more'       => $this->lang->line('upload_more'),
            'internet_down'     => $this->lang->line('internet_down'),
            'incorrect_verify'  => $this->lang->line('incorrect_verify'),
            'copied'            => $this->lang->line('copied'),
            'report_download_subject' => $this->lang->line('report_download_subject'),
            'max_recipients_reached' => $this->lang->line('max_recipients_reached'),
            'ip_limit'          => $this->lang->line('ip_limit')
        );

        echo json_encode($translation);
    }

    public function acceptterms() {
        $this->load->helper('cookie');
        $this->load->helper('url');

        $return_url = $this->input->get('url');

        set_cookie('terms', 'true', time() + 31556926);

        $return_url = urldecode($return_url);
        // Check if site_url is in the return URL
        if(strpos($return_url, $this->config->item('site_url')) === false) {
            // If not, redirect to the site_url
            echo 'no';
            exit;
        } else {
            // If it is, redirect to the return URL
            redirect($return_url);
        }
    }

    /**
     * Change language function
     */
    public function changeLanguage()
    {
        $this->load->helper('url');
        $this->load->library('session');

        // Get the requested language from the POST
        $language = strtolower($this->uri->segment(3));

        // Store the requested language in the session
        $this->session->set_userdata('language', $language);

        // Return OK
        if(isset($_GET['redirect']) && !empty($_GET['redirect'])) {
            $return_url = urldecode($_GET['redirect']);
            // Check if site_url is in the return URL
            if(strpos($return_url, $this->config->item('site_url')) === false) {
                // If not, redirect to the site_url
                redirect();
            } else {
                // If it is, redirect to the return URL
                redirect($return_url);
            }
        } else {
            redirect($this->config->item('site_url'));
        }
    }

    /**
     * Process download request
     */
    public function download()
    {
        $this->load->model('uploads');
        $this->load->model('receivers');
        $this->load->model('files');
        $this->load->model('downloads');

        $this->load->helper('download');
        $this->load->helper('string');
        $this->load->helper('number');

        $this->load->library('UploadLib');
        $this->load->library('Logging');

        ini_set('max_execution_time', 21600);
        set_time_limit(0);

        // Post data
        if(isset($_GET) && !empty($_GET)) {
            $post = $this->input->get(NULL, TRUE);
        } else {
            $post = $this->input->post(NULL, TRUE);
        }

        $this->logging->log("[DOWNLOAD] Received download request " . print_r($post, true));

        // Check if there's any id provided
        if(!empty($post['download_id'])) {
            $download_id = $post['download_id'];

            // Retrieve download info
            $download = (array) $this->uploads->getByUploadID($download_id);

            $this->logging->log("[DOWNLOAD][$download_id] Upload info of requested download: " . print_r($download, true));

            // Check if download exists and is active
            if($download !== false && $download['status'] == 'ready') {
                $receiver['email'] = '';
                if($download['share'] == 'mail') {
                    $receiver = (array) $this->receivers->getByUploadAndPrivateID($post['download_id'], $post['private_id']);
                }

                // Check if allowed to download
                if($download['share'] == 'link' || ($download['share'] == 'mail' && (isset($receiver['upload_id']) || $post['private_id'] == $download['secret_code']))) {
                    // Check if the user has entered the correct password (when set)
                    if(empty($download['password']) || (!empty($download['password']) && $this->session->userdata('download_password') == $download_id)) {
                        // If upload was uploaded with share method mail
                        // And if email hasn't been sent yet
                        if ($download['share'] == 'mail' && !$this->receivers->checkAlreadyDownloaded($download['upload_id'], $receiver['private_id'])) {
                            // Load email library
                            $this->load->library('email');

                            // Do not send an email when the admin/uploader downloads the file
                            if($post['private_id'] != $download['secret_code']) {
                                // Send email to uploader
                                $this->email->sendEmail('downloaded', array('upload_id' => $post['download_id'], 'download_email' => $receiver['email'], 'download_ip' => ($this->config->item('disable_ip_logging') == 'true' ? '' : $this->input->ip_address())), array($download['email_from']), $download['lang']);
                            }
                        }

                        // Check if the admin/uploader isn't downloading the file
                        if($post['private_id'] != $download['secret_code']) {
                            // Log the download
                            $this->downloads->insert(array(
                                'download_id' => $download['upload_id'],
                                'time' => time(),
                                'ip' => ($this->config->item('disable_ip_logging') == 'true' ? '' : $this->input->ip_address()),
                                'email' => $receiver['email']
                            ));

                            $this->logging->log("[DOWNLOAD][$download_id] Logged download in droppy_downloads table");

                            // Check if upload destruction was enabled
                            if (strtoupper($download['destruct']) == 'YES') {
                                $total_downloads = $this->downloads->getTotalByUploadID($download_id);
                                $total_recipients = count($this->receivers->getByUploadID($download_id));

                                // Check if the total downloads meets the total recipients count
                                if ($total_downloads >= $total_recipients) {
                                    $this->uploadlib->markDelete($download_id);
                                    $this->logging->log("[DOWNLOAD][$download_id] Auto destruct was enabled, all recipients downloaded the file. Marked it for deletion.");
                                }
                            }
                        }

                        // Load the plugin library
                        $this->load->library('plugin');

                        $upload_dir = $this->config->item('upload_dir');
                        if ($download['count'] > 1) {
                            $filename = $this->config->item('name_on_file') . '-' . $download['upload_id'] . '.zip';

                            $file_path = FCPATH . $upload_dir . $filename;

                            $this->logging->log("[DOWNLOAD][$download_id] Upload is a multi-file upload, download is ZIP at $file_path");

                            // ZIP

                            // Check if there's any "upload" plugin installed
                            if($this->plugin->pluginLoaded('upload')) {
                                $this->logging->log("[DOWNLOAD][$download_id] External storage plugin installed. Download will now be handled by the plugin.");

                                $upload_plugin = $this->plugin->_plugins['upload'];

                                // Include the plugin library and init it.
                                require_once $this->plugin->_pluginDir . $upload_plugin['load'] . '/' . $upload_plugin['handler_library'];

                                $handlerLibrary = new HandlerLibrary();

                                // Download the file from the external source
                                $handlerLibrary->download($download_id, $filename, $filename, $download['encrypt'], $download['size']);
                            }
                            elseif(!empty($download['encrypt']))
                            {
                                $this->logging->log("[DOWNLOAD][$download_id] File is encrypted, decrypting it and sending to the client");

                                $this->load->library('CompleteHandler');

                                force_download($filename, $file_path, false, true, $download['encrypt'], $download['size']);
                            }
                            else
                            {
                                $this->logging->log("[DOWNLOAD][$download_id] Direct download to the client");

                                force_download($filename, $file_path);
                            }
                        } else {
                            $file = $this->files->getByUploadID($download['upload_id']);

                            $file_path = FCPATH . $upload_dir . $file[0]['secret_code'] . '-' . $file[0]['file'];

                            // Single file
                            $this->logging->log("[DOWNLOAD][$download_id] Upload is a single file, downloading file directly from $file_path");

                            // Check if there's any "upload" plugin installed
                            if($this->plugin->pluginLoaded('upload')) {
                                $this->logging->log("[DOWNLOAD][$download_id] External storage plugin installed. Download will now be handled by the plugin.");

                                $upload_plugin = $this->plugin->_plugins['upload'];

                                // Include the plugin library and init it.
                                require_once $this->plugin->_pluginDir . $upload_plugin['load'] . '/' . $upload_plugin['handler_library'];

                                $handlerLibrary = new HandlerLibrary();

                                // Download the file from the external source
                                $handlerLibrary->download($download_id, $file[0]['file'], $file[0]['secret_code'] . '-' . $file[0]['file'], $download['encrypt'], $download['size']);
                            }
                            elseif(!empty($download['encrypt'])) {
                                $this->logging->log("[DOWNLOAD][$download_id] File is encrypted, decrypting it and sending to the client");

                                $this->load->library('CompleteHandler');

                                force_download($file[0]['file'], $file_path, false, true, $download['encrypt'], $download['size']);
                            }
                            else
                            {
                                $this->logging->log("[DOWNLOAD][$download_id] Direct download to the client");

                                force_download($file[0]['file'], $file_path);
                            }
                        }
                    }
                    else
                    {
                        header('Location: '.urldecode($post['url']) . '?error=wrong_pass');
                    }
                }
            }
        }
    }

    public function password()
    {
        $this->load->model('uploads');
        $this->load->model('receivers');
        $this->load->model('files');
        $this->load->model('downloads');

        $this->load->helper('download');
        $this->load->helper('string');
        $this->load->helper('number');

        // Post data
        if (isset($_GET) && !empty($_GET)) {
            $post = $this->input->get(NULL, TRUE);
        } else {
            $post = $this->input->post(NULL, TRUE);
        }

        // Check if there's any id provided
        if (!empty($post['download_id'])) {
            $download_id = $post['download_id'];

            // Retrieve download info
            $download = (array)$this->uploads->getByUploadID($download_id);

            // Check if download exists and is active
            if ($download !== false && $download['status'] == 'ready') {
                // Check password entered correctly (If password is set)
                if (empty($download['password']) || (!empty($download['password']) && (md5($post['password']) == $download['password'] || password_verify($post['password'], $download['password'])))) {
                    $this->session->set_userdata('download_password', $download_id);
                    header('Location: '.urldecode($post['url']));
                } else {
                    header('Location: '.urldecode($post['url']) . '?error=wrong_pass');
                }
            }
        }
    }

    public function file() {
        $this->load->model('uploads');
        $this->load->model('files');

        $this->load->helper('download');

        $get = $this->input->get(NULL, TRUE);

        if(isset($get['file_id']) && isset($get['file_secret'])) {
            $file_details = $this->files->getByID($get['file_id']);

            if($file_details !== false) {
                $file_details = $file_details[0];

                $upload_details = $this->uploads->getByUploadID($file_details['upload_id']);
                $is_thumb = false;

                if($file_details['thumb'] == 1 && (isset($get['thumb']) && $get['thumb'] == 1)) {
                    if ($upload_details['count'] == 1) {
                        $file_path = $this->config->item('upload_dir') . $file_details['secret_code'] . '-thumb-' . $file_details['file'];
                        $is_thumb = true;
                    } else {
                        $file_path = $this->config->item('upload_dir') . $file_details['upload_id'] . '/' . $file_details['secret_code'] . '-thumb-' . $file_details['file'];
                        $is_thumb = true;
                    }
                } else {
                    if ($upload_details['count'] == 1) {
                        $file_path = $this->config->item('upload_dir') . $file_details['secret_code'] . '-' . $file_details['file'];
                    } else {
                        $file_path = $this->config->item('upload_dir') . $file_details['upload_id'] . '/' . $file_details['secret_code'] . '-' . $file_details['file'];
                    }
                }

                // Load the plugin library
                $this->load->library('plugin');

                if($this->plugin->pluginLoaded('upload')) {
                    $upload_plugin = $this->plugin->_plugins['upload'];

                    // Include the plugin library and init it.
                    require_once $this->plugin->_pluginDir . $upload_plugin['load'] . '/' . $upload_plugin['handler_library'];

                    if($file_details['thumb'] == 1 && (isset($get['thumb']) && $get['thumb'] == 1)) {
                        if ($upload_details['count'] == 1) {
                            $file_path = $file_details['secret_code'] . '-thumb-' . $file_details['file'];
                        } else {
                            $file_path = $file_details['upload_id'] . '/' . $file_details['secret_code'] . '-thumb-' . $file_details['file'];
                        }
                    } else {
                        if ($upload_details['count'] == 1) {
                            $file_path = $file_details['secret_code'] . '-' . $file_details['file'];
                        } else {
                            $file_path = $file_details['upload_id'] . '/' . $file_details['secret_code'] . '-' . $file_details['file'];
                        }
                    }

                    // Download the file from the external source
                    header('Content-Disposition: '.(isset($get['download']) ? 'attachment' : 'inline').'; filename="'.$file_details['file'].'"');

                    $handlerLibrary = new HandlerLibrary();
                    $handlerLibrary->download($file_details['upload_id'], $file_details['file'], $file_path, $upload_details['encrypt'], $file_details['size']);
                }
                elseif(!empty($upload_details['encrypt'])) {
                    if($is_thumb) {
                        $file_details['size'] = filesize($file_path);
                    }

                    force_download($file_details['file'], $file_path, false, true, $upload_details['encrypt'], $file_details['size'], !isset($get['download']));
                }
                else
                {
                    force_download($file_details['file'], $file_path, false, false, '', 0, !isset($get['download']));
                }
            } else {
                echo json_encode(array('result' => 'failure'));
            }
        }
    }

    /**
     * Phase B — OTP: generate and email a 6-digit one-time code
     * POST handler/request_otp  { email }
     */
    public function request_otp()
    {
        header('Content-Type: application/json');

        $email = trim((string) $this->input->post('email', TRUE));

        if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo json_encode(['result' => 'invalid_email']);
            return;
        }

        // Generate a 6-digit code
        $code = str_pad((string) mt_rand(0, 999999), 6, '0', STR_PAD_LEFT);

        // Persist — delete any previous unused code for this email first
        $this->db->where('email', $email)->delete('droppy_otp');
        $this->db->insert('droppy_otp', [
            'email'      => $email,
            'code'       => $code,
            'created_at' => time(),
            'used'       => 0,
        ]);

        // Send email
        $this->load->library('email');
        $site    = $this->config->item('site_name') ?: 'Envento';
        $subject = 'Your ' . $site . ' sign-in code: ' . $code;
        $body    = '<div style="font-family:sans-serif;max-width:480px;margin:0 auto;padding:32px;">'
                 . '<h2 style="margin-bottom:8px;">Your sign-in code</h2>'
                 . '<p style="color:#555;margin-bottom:24px;">Use the code below to sign in to <strong>' . htmlspecialchars($site) . '</strong>. It expires in 5 minutes.</p>'
                 . '<div style="font-size:36px;font-weight:700;letter-spacing:8px;text-align:center;padding:20px;background:#f4f4f8;border-radius:8px;">' . $code . '</div>'
                 . '<p style="color:#999;font-size:12px;margin-top:24px;">If you did not request this code, you can safely ignore this email.</p>'
                 . '</div>';

        // sendEmailClean() has no return value — call send() directly so we can
        // capture success/failure. We replicate sendEmailClean's setup inline.
        try {
            $theme   = $this->config->item('theme');
            $message = $this->load->view('themes/' . $theme . '/emails/email.php', [
                'body'     => $body,
                'logo'     => $this->config->item('site_url') . $this->config->item('logo_path'),
                'settings' => $this->config->config,
            ], TRUE);

            $this->email->message($message);
            $this->email->subject($subject);
            $this->email->set_alt_message('Please use a HTML supported email client to view this message.');
            $this->email->from($this->config->item('email_from_email'), $this->config->item('email_from_name'));
            $this->email->to($email);

            $sent = $this->email->send();
        } catch (Exception $e) {
            $sent = false;
        }

        echo json_encode(['result' => $sent ? 'sent' : 'error']);
    }

    /**
     * Phase B — OTP: verify the submitted code
     * POST handler/verify_otp  { email, code }
     */
    public function verify_otp()
    {
        header('Content-Type: application/json');

        $email = trim((string) $this->input->post('email', TRUE));
        $code  = trim((string) $this->input->post('code',  TRUE));

        if (empty($email) || empty($code)) {
            echo json_encode(['result' => 'invalid']);
            return;
        }

        $row = $this->db
            ->where('email', $email)
            ->where('code',  $code)
            ->where('used',  0)
            ->get('droppy_otp')
            ->row_array();

        if (empty($row)) {
            echo json_encode(['result' => 'invalid']);
            return;
        }

        // 5-minute expiry
        if ((time() - (int) $row['created_at']) > 300) {
            echo json_encode(['result' => 'expired']);
            return;
        }

        // Mark used
        $this->db->where('email', $email)->update('droppy_otp', ['used' => 1]);

        // Store in session
        $this->load->library('session');
        $this->session->set_userdata('otp_verified_email', $email);

        echo json_encode(['result' => 'ok', 'email' => $email]);
    }

    /**
     * Phase B — Password login: verify email + password against droppy_users.
     * POST handler/login_password  { email, password }
     *
     * Returns:
     *  - { result: ok, email }
     *  - { result: invalid_email }
     *  - { result: invalid_credentials }
     *  - { result: error }
     *
     * Notes:
     * - We reuse the same session key `otp_verified_email` so existing Flutter
     *   flows (history_json, upload ownership) work without changes server-side.
     */
    public function login_password()
    {
        header('Content-Type: application/json');

        $email = trim((string) $this->input->post('email', TRUE));
        $pass  = (string) $this->input->post('password', TRUE);

        if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo json_encode(['result' => 'invalid_email']);
            return;
        }
        if ($pass === '') {
            echo json_encode(['result' => 'invalid_credentials']);
            return;
        }

        try {
            $this->load->model('users');
            $row = $this->users->getByEmail($email);
            if (empty($row) || empty($row['password']) || !password_verify($pass, $row['password'])) {
                echo json_encode(['result' => 'invalid_credentials']);
                return;
            }

            $this->load->library('session');
            $this->session->set_userdata('otp_verified_email', $email);

            echo json_encode(['result' => 'ok', 'email' => $email]);
        } catch (Exception $e) {
            echo json_encode(['result' => 'error']);
        }
    }

    /**
     * Phase B — OTP: clear the OTP session (sign out)
     * POST handler/otp_logout
     */
    public function otp_logout()
    {
        header('Content-Type: application/json');
        $this->load->library('session');
        $this->session->unset_userdata('otp_verified_email');
        echo json_encode(['result' => 'ok']);
    }

    /**
     * GET handler/history_json
     * Returns the OTP-authenticated user's transfer history as JSON.
     * Requires an active OTP session (same session cookie used by the web).
     */
    public function history_json()
    {
        header('Content-Type: application/json');
        $this->load->library('session');
        $this->load->model('uploads');
        $this->load->model('files');
        $this->load->helper('seconds');

        $otp_email = $this->session->userdata('otp_verified_email');
        if (empty($otp_email)) {
            echo json_encode(['result' => 'unauthenticated']);
            return;
        }

        $raw = $this->uploads->getByEmail($otp_email, 50);
        $transfers = [];
        if (!empty($raw)) {
            foreach ($raw as $row) {
                $files = $this->files->getByUploadID($row['upload_id']);
                $file_list = [];
                if (!empty($files)) {
                    foreach ($files as $f) {
                        $file_list[] = [
                            'name'         => $f['name'] ?? '',
                            'size'         => (int)($f['size'] ?? 0),
                            'content_type' => $f['content_type'] ?? '',
                        ];
                    }
                }
                $transfers[] = [
                    'upload_id'   => $row['upload_id'] ?? '',
                    'share'       => $row['share'] ?? 'link',
                    'count'       => (int)($row['count'] ?? 0),
                    'size'        => (int)($row['size'] ?? 0),
                    'time'        => (int)($row['time'] ?? 0),
                    'time_expire' => (int)($row['time_expire'] ?? 0),
                    'destruct'    => $row['destruct'] ?? 'no',
                    'files'       => $file_list,
                ];
            }
        }

        echo json_encode(['result' => 'ok', 'email' => $otp_email, 'transfers' => $transfers]);
    }

    public function contact() {
        $this->load->library('email');
        $this->load->helper('recaptcha');

        $this->lang->load('main_lang', $this->session->userdata('language'));

        // Post data
        $post = $this->input->post(NULL, TRUE);

        if(!empty($post['contact_email']) && !empty($post['contact_subject']) && !empty($post['contact_message'])) {
            if(empty($this->config->item('recaptcha_secret')) || validate_recaptcha($post['g-recaptcha-response'], $this->config->item('recaptcha_secret'))) {
                $this->email->reply_to($post['contact_email']);
                $this->email->sendEmailClean(nl2br(htmlspecialchars($post['contact_message'])), 'Contact: ' . $post['contact_subject'], array($this->config->item('contact_email')));

                echo json_encode(array('result' => 'success'));
                exit;
            }
            echo json_encode(array('result' => 'recaptcha'));
            exit;
        }
        echo json_encode(array('result' => 'fields'));
        exit;
    }
}