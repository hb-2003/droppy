<?php
$this->load->library('Logging');
$this->logging->log('Received webhook request');

require_once dirname(__FILE__) . '/../../autoloader.php';
require_once dirname(__FILE__). '/init.php';

$payload = @file_get_contents('php://input');
$event = null;

try {
    $event = \Stripe\Event::constructFrom(
        json_decode($payload, true)
    );
} catch(\UnexpectedValueException $e) {
    // Invalid payload
    http_response_code(400);
    exit();
}

$clsSettings = new PremiumSettings();
$premium_settings = $clsSettings->getSettings();

$premiumJsonConfig = file_get_contents(dirname(__FILE__) . '/../../config.json');
$premium_config = json_decode($premiumJsonConfig, true)['premium'];

$droppy_settings = $clsSettings->getDroppySettings();

// Init some classes
$clsUser = new PremiumUser();
$clsSubs = new PremiumSubs();

$this->logging->log($event->type);

// Handle the event
switch ($event->type) {
    // First payment checkout is completed
    case 'checkout.session.completed':
        $paymentIntent = $event->data->object;
        $client_reference = $paymentIntent->client_reference_id;

        if(!empty($client_reference)) {
            $sub = $clsSubs->getBySubID($client_reference);

            if($sub['status'] == 'validating') {
                $clsSubs->updateBySubID(array(
                    'status' => 'active',
                    'stripe_id' => $paymentIntent->subscription
                ), $client_reference);
            }
        }
    break;
    case 'charge.failed':

    break;
    case 'customer.subscription.deleted':
        $paymentIntent = $event->data->object;

        $clsSubs->updateByStripeID(array('status' => 'canceled_end'), $paymentIntent->id);

        $info = $clsSubs->getByStripeID($paymentIntent->id);

        $item = $paymentIntent->items->data[0];

        if(!empty($info) && !empty($item)) {
            $tokens = array(
                'paypal_id' => $paymentIntent->id,
                'name' => $info['name'],
                'status' => $info['status'],
                'company' => $info['company'],
                'sub_id' => $info['sub_id'],
                'manage_page' => $droppy_settings['site_url'] . '?goto=custom_account'
            );

            if(is_int($item->current_period_start)) {
                $tokens['last_date'] = date('Y-m-d', $item->current_period_start);
            }

            if(is_int($item->current_period_end)) {
                $tokens['next_date'] = date('Y-m-d', $item->current_period_end);
            }

            $this->email->sendEmail('premium_sub_cancel_e', $tokens, [$info['email']]);
        } else {
            $this->logging->log("Payment info was not complete");
            $this->logging->log(print_r($paymentIntent, true));
        }

    break;
    case 'customer.subscription.updated':
        $sub_ID = $event->data->object->id;

        if(!empty($sub_ID)) {
            $paymentIntent = $event->data->object;
            $item = $paymentIntent->items->data[0];

            $this->logging->log("customer.subscription.updated with data ".print_r($paymentIntent, true));

            if(!empty($item)) {
                $sub = $clsSubs->getByStripeID($sub_ID);

                if (is_int($item->current_period_start) && is_int($item->current_period_end)) {
                    $clsSubs->updateByStripeID(array(
                        'last_date' => $item->current_period_start,
                        'next_date' => $item->current_period_end
                    ), $sub_ID);

                    if ($item->current_period_end > time()) {
                        $clsSubs->updateByStripeID(array(
                            'status' => 'active'
                        ), $sub_ID);
                    }
                }
            }
        }
    break;

    case 'customer.subscription.created':
        $sub_ID = $event->data->object->id;

        $this->logging->log("customer.subscription.created received with sub_ID $sub_ID");

        if(!empty($sub_ID)) {
            $paymentIntent = $event->data->object;
            $item = $paymentIntent->items->data[0];

            $this->logging->log("customer.subscription.created item " . print_r($item, true));

            if(!empty($item)) {
                $info = $clsSubs->getByStripeID($sub_ID);

                $tokens = array(
                    'last_date' => date('Y-m-d', $item->current_period_start),
                    'next_date' => date('Y-m-d', $item->current_period_end),
                    'paypal_id' => $paymentIntent->id,
                    'name' => $info['name'],
                    'status' => $info['status'],
                    'company' => $info['company'],
                    'sub_id' => $info['sub_id'],
                    'manage_page' => $droppy_settings['site_url'] . '?goto=custom_account',
                    'email' => $info['email'],
                    'payment' => $info['payment']
                );

                $this->email->sendEmail('premium_new_sub', $tokens, [$info['email']]);

                $update = [];
                if (is_int($item->current_period_start)) {
                    $update['last_date'] = $item->current_period_start;
                }

                if (is_int($item->current_period_end)) {
                    $update['next_date'] = $item->current_period_end;
                }

                $this->logging->log("Updating subscription with id $sub_ID using update array ".print_r($update, true));
                $clsSubs->updateByStripeID($update, $sub_ID);
            } else {
                $this->logging->log("Payment info was not complete");
                $this->logging->log(print_r($paymentIntent, true));
            }
        }
    break;

    default:
        echo 'Received unknown event type ' . $event->type;
}

http_response_code(200);
exit;
