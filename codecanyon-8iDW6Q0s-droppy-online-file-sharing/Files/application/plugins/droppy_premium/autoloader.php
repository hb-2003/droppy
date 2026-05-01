<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

/**
 * Droppy Premium - Autoloader
 */

// Autoload config
$premiumJsonConfig = file_get_contents(dirname(__FILE__) . '/config.json');
if ($premiumJsonConfig === false) {
    die('Could not read config.json');
}
$decoded = json_decode($premiumJsonConfig, true);
if (json_last_error() !== JSON_ERROR_NONE || !isset($decoded['premium'])) {
    die('Invalid config.json: ' . json_last_error_msg());
}
$premium_config = $decoded['premium'];

// Autload models
foreach (glob(dirname(__FILE__) . "/models/*.php") as $filename)
{
    require_once $filename;
}