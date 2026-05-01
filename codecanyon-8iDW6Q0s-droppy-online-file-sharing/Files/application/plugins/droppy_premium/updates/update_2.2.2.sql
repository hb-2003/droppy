-- Security patch: add token expiry to forgot password table
ALTER TABLE `droppy_pm_forgot`
    ADD COLUMN `created_at` INT(11) NOT NULL DEFAULT 0;

-- Security patch: widen password column to support bcrypt hashes (60 chars)
ALTER TABLE `droppy_pm_users`
    MODIFY COLUMN `password` varchar(255) NOT NULL;

-- Security patch: widen sub_id to support 32-char hex tokens (bin2hex(random_bytes(16)))
ALTER TABLE `droppy_pm_users`
    MODIFY COLUMN `sub_id` varchar(255) NOT NULL;

ALTER TABLE `droppy_pm_subs`
    MODIFY COLUMN `sub_id` varchar(255) NOT NULL DEFAULT '';
