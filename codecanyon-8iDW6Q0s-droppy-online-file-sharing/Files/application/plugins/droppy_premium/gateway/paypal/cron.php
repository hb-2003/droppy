<?php
//Getting php files

require_once dirname(__FILE__) . '/paypalfunctions.php';
require_once dirname(__FILE__) . '/../../autoloader.php';

$premiumJsonConfig = file_get_contents(dirname(__FILE__) . '/../../config.json');
if ($premiumJsonConfig === false) {
    die('Could not read config.json');
}
$_cronDecoded = json_decode($premiumJsonConfig, true);
if (json_last_error() !== JSON_ERROR_NONE || !isset($_cronDecoded['premium'])) {
    die('Invalid config.json: ' . json_last_error_msg());
}
$premium_config = $_cronDecoded['premium'];
unset($_cronDecoded);

$CI =& get_instance();
$CI->load->library('email');

$clsSettings = new PremiumSettings();
$clsSubs     = new PremiumSubs();
$clsUser     = new PremiumUser();

$premium_settings = $clsSettings->getSettings();

$droppy_settings = $clsSettings->getDroppySettings();

$clsPaypal = new Paypal($premium_config, $premium_settings);

//Getting the time in LA (California) (Paypal Timezone)
date_default_timezone_set('America/Los_Angeles');

$subs = $clsSubs->getForCron();

if($subs !== false)
{
    foreach ($subs as $row)
    {
        $sub_id = $row['sub_id'];
        $next_date = $row['next_date'];
        $last_date = $row['last_date'];
        $paypal_id = $row['paypal_id'];

        // Still no payment after 3-day grace period
        if (!empty($next_date) && time() > $next_date + 259200)
        {
            $clsSubs->updateBySubID(array('status' => 'canceled'), $sub_id);

            $user = $clsUser->getBySubID($sub_id);
            if($user !== false)
            {
                $user_email = $user['email'];

                if($row['payment'] == 'paypal') {
                    $clsPaypal->change_subscription_status($paypal_id, 'Cancel');
                } else {
                    $clsSubs->updateByID(array('status' => 'canceled'), $row['id']);
                }

                $tokens = array(
                    'next_date' => date("Y-m-d", $row['next_date']),
                    'paypal_id' => $row['paypal_id'],
                    'last_date' => date("Y-m-d", $row['last_date']),
                    'name' => $row['name'],
                    'status' => $row['status'],
                    'company' => $row['company'],
                    'sub_id' => $row['sub_id'],
                    'manage_page' => $droppy_settings['site_url'] . '?goto=custom_account'
                );

                $CI->email->sendEmail('premium_sub_cancel_n', $tokens, [$row['email']]);
            }
        }

        if (($row['status'] == 'suspended' && $row['next_date'] + $premium_config['cancel_suspend'] < time()) || ($row['status'] == 'suspended_reversal' && $row['next_date'] + $premium_config['cancel_suspend'] < time()))
        {
            $clsSubs->updateBySubID(array('status' => 'canceled'), $sub_id);
            $clsPaypal->change_subscription_status($paypal_id, 'Cancel');
        }
    }
}