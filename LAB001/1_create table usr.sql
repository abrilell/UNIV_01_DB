CREATE TABLE `un_usr_sk`.`usr` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `usr` VARCHAR(45) NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `surname` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8 COLLATE = UTF8_UNICODE_CI;