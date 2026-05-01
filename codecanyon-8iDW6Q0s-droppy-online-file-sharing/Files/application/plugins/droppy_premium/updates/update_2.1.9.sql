UPDATE droppy_pm_settings SET plugin_version = '2.1.9';
ALTER TABLE droppy_pm_plans ADD plan_active VARCHAR(10) DEFAULT 'true' AFTER plan_backgrounds;

ALTER TABLE droppy_pm_plans ADD plan_destruct_enabled VARCHAR(10) DEFAULT 'true' AFTER plan_backgrounds;
ALTER TABLE droppy_pm_plans ADD plan_share_enabled VARCHAR(10) DEFAULT 'true' AFTER plan_destruct_enabled;
ALTER TABLE droppy_pm_subs ADD `sub_price` varchar(11) DEFAULT NULL AFTER `sub_plan`;

INSERT INTO droppy_templates (type, msg, lang)
SELECT 'premium_sub_cancel_n_subject' AS type, sub_cancel_n_subject AS msg, 'english' AS lang FROM droppy_pm_settings
UNION ALL
SELECT 'premium_sub_cancel_n', sub_cancel_n_email, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_sub_cancel_e_subject', sub_cancel_e_subject, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_sub_cancel_e', sub_cancel_e_email, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_new_sub_subject', new_sub_subject, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_new_sub', new_sub_email, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_sus_subject', sus_email_sub, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_sus', sus_email, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_payment_failed_subject', payment_failed_sub, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_payment_failed', payment_failed_email, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_forgot_pass_subject', forgot_pass_subject, 'english' FROM droppy_pm_settings
UNION ALL
SELECT 'premium_forgot_pass', forgot_pass_email, 'english' FROM droppy_pm_settings;

INSERT INTO `droppy_templates` (`type`, `msg`, `lang`)
VALUES
    ('premium_complete_offline_subject', 'Your subscription is almost active!', 'english'),
    ('premium_complete_offline', 'Hello,\r\n\r\nThank you for your registration!\r\n\r\nTo complete the registration process and unlock the full benefits of our services, we kindly request you to finalize your registration by transferring the required amount of {amount} USD to the following bank details:\r\n\r\nBank Name: [Bank Name]\r\nAccount Holder: [Your Company Name]\r\nAccount Number: [Account Number]\r\nRouting Number: [Routing Number]\r\nReference: {sub_id}\r\n\r\nIf you have any questions or need further assistance, feel free to reach out to us. We\'re here to help!\r\n\r\nBest regards,\r\nCompany', 'english');