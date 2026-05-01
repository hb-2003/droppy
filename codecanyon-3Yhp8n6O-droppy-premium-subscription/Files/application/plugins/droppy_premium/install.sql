CREATE TABLE `droppy_pm_forgot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `reset` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `droppy_pm_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `currency` varchar(500) NOT NULL,
  `sub_price` varchar(100) NOT NULL,
  `recur_time` varchar(100) NOT NULL,
  `recur_freq` int(100) NOT NULL,
  `max_fails` int(100) NOT NULL,
  `username_api` varchar(200) NOT NULL,
  `password_api` varchar(200) NOT NULL,
  `signature_api` varchar(200) NOT NULL,
  `logo_url` varchar(200) NOT NULL,
  `enable_vat` varchar(10) DEFAULT 'false',
  `enable_address` varchar(10) DEFAULT 'false',
  `enable_multi_user` varchar(10) DEFAULT 'false',
  `payment_gateway` varchar(50) DEFAULT NULL,
  `stripe_key` varchar(255) DEFAULT NULL,
  `stripe_product` varchar(255) DEFAULT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `stripe_webhook` varchar(255) DEFAULT NULL,
  `plugin_version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `droppy_pm_settings` WRITE;
/*!40000 ALTER TABLE `droppy_pm_settings` DISABLE KEYS */;

INSERT INTO `droppy_pm_settings` (`id`, `currency`, `sub_price`, `max_fails`, `username_api`, `password_api`, `signature_api`, `logo_url`, `plugin_version`)
VALUES
	(1,'USD','0',1,'','','','http://yoururl/assets/images/logo_droppy.png','2.2.1');

/*!40000 ALTER TABLE `droppy_pm_settings` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `droppy_pm_subs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sub_id` varchar(100) NOT NULL DEFAULT '',
  `sub_plan` INT(11) DEFAULT NULL,
  `sub_price` varchar(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT '',
  `company` varchar(200) DEFAULT '',
  `vat_number` varchar(255) DEFAULT '',
  `address_street` varchar(255) DEFAULT '',
  `address_zip` varchar(255) DEFAULT '',
  `address_city` varchar(255) DEFAULT '',
  `address_country` varchar(255) DEFAULT '',
  `payment` varchar(100) DEFAULT '',
  `last_date` varchar(200) DEFAULT '',
  `next_date` varchar(200) DEFAULT '',
  `time` int(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT '',
  `paypal_token` varchar(200) DEFAULT '',
  `paypal_id` varchar(200) DEFAULT '',
  `paypal_payerid` varchar(200) DEFAULT '',
  `paypal_email` varchar(200) DEFAULT '',
  `paypal_status` varchar(100) DEFAULT '',
  `paypal_name` varchar(200) DEFAULT '',
  `paypal_country` varchar(200) DEFAULT '',
  `paypal_phone` varchar(100) DEFAULT '',
  `paypal_ordertime` varchar(200) DEFAULT '',
  `stripe_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `droppy_pm_users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `sub_id` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `droppy_pm_vouchers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `discount_type` varchar(20) DEFAULT NULL,
  `discount_value` int(10) DEFAULT NULL,
  `discount_percentage` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `droppy_pm_plans` (
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `plan_name` varchar(255) DEFAULT NULL,
   `plan_desc` varchar(255) DEFAULT NULL,
   `plan_features` longtext DEFAULT NULL,
   `plan_price` varchar(11) DEFAULT NULL,
   `plan_time` varchar(255) DEFAULT NULL,
   `plan_freq` int(11) DEFAULT NULL,
   `plan_max_size` int(10) DEFAULT NULL,
   `plan_password_enabled` varchar(100) DEFAULT NULL,
   `plan_expire_time` longtext DEFAULT NULL,
   `plan_ad_enabled` varchar(100) DEFAULT NULL,
   `plan_max_storage` int(12) DEFAULT NULL,
   `plan_backgrounds` VARCHAR(11) DEFAULT 'false',
   `plan_active` VARCHAR(10) DEFAULT 'true',
   `plan_destruct_enabled` VARCHAR(10) DEFAULT 'true',
   `plan_share_enabled` VARCHAR(10) DEFAULT 'true',
   `plan_stripe_id` varchar(100) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `droppy_pm_backgrounds` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `src` text DEFAULT NULL,
    `url` text DEFAULT NULL,
    `duration` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `droppy_uploads` ADD `pm_email` varchar(100) DEFAULT NULL;

INSERT INTO `droppy_templates` (`type`, `msg`, `lang`)
VALUES
    ('premium_complete_offline_subject', 'Your subscription is almost active!', 'english'),
    ('premium_complete_offline', 'Hello,\r\n\r\nThank you for your registration!\r\n\r\nTo complete the registration process and unlock the full benefits of our services, we kindly request you to finalize your registration by transferring the required amount of {amount} USD to the following bank details:\r\n\r\nBank Name: [Bank Name]\r\nAccount Holder: [Your Company Name]\r\nAccount Number: [Account Number]\r\nRouting Number: [Routing Number]\r\nReference: {sub_id}\r\n\r\nIf you have any questions or need further assistance, feel free to reach out to us. We\'re here to help!\r\n\r\nBest regards,\r\nCompany', 'english'),
	('premium_sub_cancel_n_subject', 'Your subscription has been canceled', 'english'),
	('premium_sub_cancel_n', 'Hello {name},\r\n\r\nThis is an email to let you know that your subscription ( {sub_id} ) has been canceled. Please go this <a href=\"{manage_page}\">page</a> to register a new subscription.\r\n\r\nPlease let us know if we can be of any further assistance.\r\n\r\nBest regards,\r\nCompany', 'english'),
    ('premium_sub_cancel_e_subject', 'Your subscription has been canceled', 'english'),
     ('premium_sub_cancel_e', '<p>Hello {name},</p><br>\r\n<p>This is an email to let you know that your subscription ( {sub_id} ) has been canceled. We will not charge you anymore, you can still use our service till {next_date}</p>\r\n<p>Please go this <a href=\"{manage_page}\">page</a> if you want to register a new subscription.</p><bR>\r\n<p>Please let us know if we can be of any further assistance.</p><br>\r\nBest regards,<br>\r\nCompany', 'english'),
     ('premium_new_sub_subject', 'Welcome to the Premium world !', 'english'),
     ('premium_new_sub', 'Hello {name},<br>\r\nWe have successfully received your registration and you will now be able to login <a href=\"{manage_page}\">here</a><br>\r\n<p>Registration details:</p>\n<div>\n  <div><span><strong>Subscription id:</strong></span> <span>{sub_id}</span></div>\n  <div><span><strong>Paypal ID:</strong></span> <span>{paypal_id}</span></div>\n  <div><span><strong>E-Mail:</strong></span> <span>{email}</span></div>\n  <div><span><strong>Checkout:</strong></span> <span>{payment}</span></div>\n  <div><span><strong>Name:</strong></span> <span>{name}</span></div>\n  <div><span><strong>Company:</strong></span> <span>{company}</span></div>\n  <div><span><strong>Next pay day:</strong></span> <span>{next_date}</span></div>\n</div>\r\n\r\nPlease let us know if we can be of any further assistance.<br>\r\n\r\nBest regards,<br>\r\nCompany', 'english'),
     ('premium_sus_subject', 'Subscription has been suspended', 'english'),
     ('premium_sus', 'Subscription has been suspended', 'english'),
     ('premium_payment_failed_subject', 'Received a failed payment', 'english'),
     ('premium_payment_failed', '<p>Hello {name},</p><br> <p>We would like to let you know that your account/subscription ({sub_id}) has received a <strong>failed/skipped</strong> payment. Please check your recurring profile ({paypal_id}) at Paypal and fix this as soon as possible.</p><br> <p>Please let us know if we can be of any assistance</p><br> <p>Best regards,<br> Company</p>', 'english'),
     ('premium_forgot_pass_subject', 'Your password reset link', 'english'),
     ('premium_forgot_pass', 'Hello,\r\n\r\nThank you for using our service, we have received a request to change your password.\r\nYou can change the password with the following URL mentioned below.\r\n\r\n{reset_url}\r\n\r\nYou can just ignore this email if you did not requested this.\r\n\r\nBest regards,\r\nCompany', 'english');
