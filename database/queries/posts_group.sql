CREATE TABLE `posts_group` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NULL DEFAULT NULL,
	`category` INT(11) NULL DEFAULT NULL,
	`order_by` VARCHAR(20) NULL DEFAULT NULL,
	`sort` VARCHAR(4) NULL DEFAULT NULL,
	`limit` INT(11) NULL DEFAULT NULL,
	`additional_column` VARCHAR(200) NULL DEFAULT NULL,
	`additional_operartors` VARCHAR(200) NULL DEFAULT NULL,
	`additional_value` VARCHAR(200) NULL DEFAULT NULL,
	`created_at` DATETIME NULL DEFAULT current_timestamp(),
	`updated_at` DATETIME NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB;
