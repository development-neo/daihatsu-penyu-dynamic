ALTER TABLE `publics`
	ADD COLUMN `is_home` INT(11) NULL DEFAULT NULL AFTER `projects`;
UPDATE publics SET is_home = 1 WHERE id = 1;