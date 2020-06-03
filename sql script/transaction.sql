USE `credit-management` ;

CREATE TABLE IF NOT EXISTS `credit-management`.`transaction` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sender` VARCHAR(255) NULL DEFAULT NULL,
    `receiver` VARCHAR(255) DEFAULT NULL,
      `amount` INT(13) DEFAULT NULL,
      
  PRIMARY KEY (`id`))
;
INSERT INTO transaction (ID,SENDER,RECEIVER,AMOUNT)VALUES (1, 'Ananya','Arpit',7);
INSERT INTO transaction(ID,SENDER,RECEIVER,AMOUNT)VALUES (2, 'Rob','Arpit',89);