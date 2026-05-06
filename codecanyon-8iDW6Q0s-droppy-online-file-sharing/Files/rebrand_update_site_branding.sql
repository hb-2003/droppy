-- Rebrand: update public site name, browser title, and default From name for emails.
-- Run once on an EXISTING database (phpMyAdmin, mysql CLI, etc.).
-- Email bodies use {site_name} from droppy_templates — they pick up the new site_name automatically.

UPDATE `droppy_settings`
SET
  `site_name` = 'Share Large Video Files',
  `site_title` = 'Share Large Video Files',
  `site_desc` = 'Send large video files and large files securely',
  `email_from_name` = 'Share Large Video Files'
WHERE `id` = 1;
