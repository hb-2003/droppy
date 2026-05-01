<?php
// cancel.php — delegates to the Paypal class instance provided by the including context

if (isset($_GET['action']) && $_GET['action'] === 'Cancel' && isset($_GET['id'])) {
    $profile_id = preg_replace('/[^A-Z0-9\-]/', '', strtoupper($_GET['id']));
    if (!empty($profile_id) && isset($clsPaypal)) {
        $clsPaypal->change_subscription_status($profile_id, 'Cancel');
    }
}
