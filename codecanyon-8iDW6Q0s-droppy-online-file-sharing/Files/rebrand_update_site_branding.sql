-- Rebrand: update public site name, browser title, and default From name for emails.
-- Run once on an EXISTING database (phpMyAdmin, mysql CLI, etc.).
--
-- Mail templates shipped with Droppy use the placeholder {site_name} in the `msg` column.
-- After this UPDATE, new notification emails use "Share Large Video Files" wherever {site_name} is substituted.
-- If you edited templates in Admin and typed the old product name literally, open Admin → Settings →
-- Mail templates and fix those strings, or run a targeted UPDATE on `droppy_templates` after reviewing `msg`.

UPDATE `droppy_settings`
SET
  `site_name` = 'Share Large Video Files',
  `site_title` = 'Share Large Video Files',
  `site_desc` = 'Send large video files and large files securely',
  `email_from_name` = 'Share Large Video Files'
WHERE `id` = 1;
