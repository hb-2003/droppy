-- ---------------------------------------------------------------------------
-- The vendor's `application/install/droppy.sql` references `droppy_uploads`
-- (indexes, ALTERs from the premium plugin) but never creates the table —
-- the official installer downloads that schema from a remote license server.
--
-- This file recreates the table from inspection of the model
-- (`application/models/Uploads.php`) so we can install offline.
-- Safe to run multiple times: every CREATE uses IF NOT EXISTS.
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `droppy_uploads` (
    `id`            INT(11) NOT NULL AUTO_INCREMENT,
    `upload_id`     VARCHAR(100) NOT NULL,
    `secret_code`   VARCHAR(255) NOT NULL,
    `email_from`    VARCHAR(200) DEFAULT NULL,
    `message`       LONGTEXT,
    `password`      VARCHAR(255) DEFAULT NULL,
    `destruct`      VARCHAR(10)  DEFAULT 'false',
    `share`         VARCHAR(20)  DEFAULT 'link',
    `time`          INT(11) NOT NULL DEFAULT 0,
    `ip`            VARCHAR(100) DEFAULT NULL,
    `time_expire`   INT(11) NOT NULL DEFAULT 0,
    `status`        VARCHAR(20)  NOT NULL DEFAULT 'processing',
    `lang`          VARCHAR(50)  DEFAULT NULL,
    `file_previews` VARCHAR(10)  DEFAULT 'true',
    `count`         INT(11) NOT NULL DEFAULT 0,
    `size`          BIGINT(20) NOT NULL DEFAULT 0,
    `encrypt`       LONGTEXT,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
