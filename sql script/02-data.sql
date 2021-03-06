
DROP SCHEMA IF EXISTS `credit-management`;

CREATE SCHEMA `credit-management`;
USE `credit-management` ;

CREATE TABLE IF NOT EXISTS `credit-management`.`user` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
    `email` VARCHAR(255) DEFAULT NULL,
      `current_credit` INT(13) DEFAULT NULL,
      `amount` INT(13),
  PRIMARY KEY (`id`))
;

INSERT INTO user (ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (1, 'Ananya','ananya@gmail.com'
,23434,7);
INSERT INTO user(ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (2, 'Arpit','arpit@gmail.com'
,53623,9);
INSERT INTO user (ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (3, 'Chitra','chitra@gmail.com'
,23321,9);
INSERT INTO user (ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (4, 'Deepansh','deepansh@gmail.com'
,67423,4);
INSERT INTO user(ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (5, 'Kamal','kamal@gmail.com'
,75423,3);
INSERT INTO user (ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (6, 'Praksh','praksh@gmail.com'
,47878,1);
INSERT INTO user(ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (7, 'Anamika','anamika@gmail.com'
,42376,3);
INSERT INTO user (ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (8, 'John','john12@gmail.com'
,21373,443);
INSERT INTO user (ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (9, 'Rob','rob65@gmail.com'
,78464,476);
INSERT INTO user(ID,NAME,EMAIL,CURRENT_CREDIT,AMOUNT)VALUES (10, 'Akash','akash@gmail.com'
,35647,46);