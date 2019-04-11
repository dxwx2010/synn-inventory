CREATE TABLE IF NOT EXISTS `inventory` (
    `uiid` VARCHAR(255) NOT NULL PRIMARY KEY,
    `owner` VARCHAR(64), 
    `theme` TINYINT(11) UNSIGNED NOT NULL DEFAULT 0,
    `style` TINYINT(11) UNSIGNED NOT NULL DEFAULT 0,
    `width` TINYINT(11) UNSIGNED NOT NULL DEFAULT 8,
    `height` TINYINT(11) UNSIGNED NOT NULL DEFAULT 8,
    `data` TEXT NOT NULL,
    INDEX idx_uiid_owner (uiid, owner)
);