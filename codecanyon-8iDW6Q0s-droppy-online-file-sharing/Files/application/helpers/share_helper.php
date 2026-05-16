<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

/**
 * Build a public share/download URL for an upload.
 *
 * @param string $site_url      Site base URL from settings
 * @param string $upload_id     Upload identifier
 * @param string $access_token  private_id (recipient) or secret_code (sender) for mail shares
 */
if (!function_exists('droppy_share_url')) {
    function droppy_share_url($site_url, $upload_id, $access_token = '')
    {
        $base = rtrim((string) $site_url, '/');
        $url  = $base . '/' . trim((string) $upload_id, '/');
        if ($access_token !== '') {
            $url .= '/' . trim((string) $access_token, '/');
        }
        return $url;
    }
}
