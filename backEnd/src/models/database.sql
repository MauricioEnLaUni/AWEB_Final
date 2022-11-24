CREATE DATABASE `movietheater`
CHARSET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
USE `movietheater`;

-- BEGIN TABLES
-- Users
CREATE TABLE `USERS`(
	`id` BINARY(16) NOT NULL,
    `username` VARCHAR(16) NOT NULL,
    `password` VARCHAR(72) NOT NULL,
    `email` VARCHAR(64) NOT NULL,
    `active` BOOLEAN
) ENGINE = InnoDB;

-- END TABLES



-- BEGIN STORED PROCEDURES

-- Create USER
DELIMITER //
CREATE PROCEDURE `sp_getuser`(IN `un` VARCHAR(16), IN `pw` VARCHAR(72), IN `em` VARCHAR(64))
BEGIN
	INSERT INTO `USERS`(`id`,`username`,`password`,`email`,`active`)
    VALUES(UUID(), `un`, `pw`, `em`, true);
END //
DELIMITER ;

-- Get One USER
DELIMITER //
CREATE PROCEDURE `sp_getUser`(IN `un` VARCHAR(16))
BEGIN
	SELECT * FROM `USERS` WHERE `un`;
END //
DELIMITER ;

-- Get all users
DELIMITER //
CREATE PROCEDURE `sp_getAllUsers`()
BEGIN
	SELECT * FROM `USERS`;
END //
DELIMITER ;

-- END STORED PROCEDURES


 
-- BEGIN USERS

-- CUSTOMER
CREATE USER 'b8977KlEEZRy'@'localhost' IDENTIFIED BY ':Ci8Qh32ZKaDtGD0_8MXCbfAfXQIThHiXVQdnE~evmrB0fqZC9';
GRANT EXECUTE ON `movietheater`.* TO 'b8977KlEEZRy'@'localhost';
FLUSH PRIVILEGES;

-- PROVIDER
CREATE USER 'S16b5gXPG7e1'@'localhost' IDENTIFIED BY '&OwWhZW7tb8IgE9|veNFqDIlBXzQuBnW3m_PPgAd154i8qTydp';
GRANT EXECUTE ON `movietheater`.* TO 'b8977KlEEZRy'@'localhost';
FLUSH PRIVILEGES;
