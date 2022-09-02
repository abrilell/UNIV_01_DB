CREATE TABLE `un_usr_sk`.`usr` (
  `id` INT NOT NULL,
  `usr` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `suername` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

ALTER TABLE `un_usr_sk`.`usr` 
CHANGE COLUMN `suername` `surname` VARCHAR(45) NOT NULL ;