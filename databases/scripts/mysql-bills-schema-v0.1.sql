SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `billsdb` ;

CREATE SCHEMA IF NOT EXISTS `billsdb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;

USE `billsdb` ;

CREATE TABLE IF NOT EXISTS BILLS (
    BILL_ID       VARCHAR(100),
	BILL_SEQUENCE VARCHAR(100),
    BILL_DATETIME DATE,
    CLIENT_ID     VARCHAR(100),
    BILL_TOTAL    BIGINT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS BILL_DETAIL (
    DETAIL_ID  VARCHAR(100),
    BILL_ID    VARCHAR(100),
	PRODUCT_ID VARCHAR(100),
    QUANTITY   BIGINT,
    DISCOUNT   BIGINT
) ENGINE = InnoDB;

ALTER TABLE BILLS ADD CONSTRAINT PK_IMG PRIMARY KEY (BILL_ID);
ALTER TABLE BILLS ADD INDEX(BILL_SEQUENCE);

ALTER TABLE BILL_DETAIL ADD CONSTRAINT PK_IMG PRIMARY KEY (DETAIL_ID);
ALTER TABLE BILL_DETAIL ADD INDEX(BILL_ID);

ALTER TABLE BILL_DETAIL ADD FOREIGN KEY (BILL_ID) REFERENCES Persons(BILL_ID);

INSERT INTO BILLS VALUES ('b3981c7c-05f1-4a0e-afb4-ef739329314e', 45857270, DATE_FORMAT(NOW(), '%Y-%m-%d %h:%i:%s'), '1570bdd3-7f1e-4a1c-8198-66bbff32a176', 221764);
INSERT INTO BILLS VALUES ('b7ffc973-45ec-47a3-83f3-e6f9f65527e3', 26921633, DATE_FORMAT(NOW(), '%Y-%m-%d %h:%i:%s'), '80c96f74-4a2a-48ad-9f34-14974eea7907', 433230);
INSERT INTO BILLS VALUES ('d05d58db-e622-4f89-b733-96d6823019a8', 63539583, DATE_FORMAT(NOW(), '%Y-%m-%d %h:%i:%s'), '1fe55f6f-be82-4f48-90f7-bf77f00cfb8f', 571900);
INSERT INTO BILLS VALUES ('ce4f5e33-019a-445d-bdb6-fbc442d6da44', 42251138, DATE_FORMAT(NOW(), '%Y-%m-%d %h:%i:%s'), '97c39553-4720-404b-ae49-a223d8a196e6', 171869);
INSERT INTO BILLS VALUES ('435dc71d-f51f-426b-9422-18ac8c2fcac6', 59981659, DATE_FORMAT(NOW(), '%Y-%m-%d %h:%i:%s'), 'e9e0817f-e058-4773-9911-47f4c44b175b', 197593);

INSERT INTO BILL_DETAIL VALUES ('3f69e808-0569-4290-acd3-f4bb150201cc', 'b3981c7c-05f1-4a0e-afb4-ef739329314e', 'b34d4798-8357-415e-a818-82084c616f6d', 2, 15);
INSERT INTO BILL_DETAIL VALUES ('889a4b13-1d69-4b86-b16d-d4b50786909b', 'b3981c7c-05f1-4a0e-afb4-ef739329314e', '5f862940-bd1c-45ab-b9bb-b7f302a69e92', 1, 10);
INSERT INTO BILL_DETAIL VALUES ('37f7a733-f8d8-47c5-82d1-f3a8da91033a', 'b3981c7c-05f1-4a0e-afb4-ef739329314e', '4b97dc13-6382-4db0-961a-fdc1bd810599', 3, 5);

INSERT INTO BILL_DETAIL VALUES ('2bcd85dd-c450-4a6f-addc-6b1820bfbafd', 'b7ffc973-45ec-47a3-83f3-e6f9f65527e3', '6d7a2e5c-520b-4dd9-b6a4-9686d9dee990', 1, 20);
INSERT INTO BILL_DETAIL VALUES ('16f61fce-7e9e-4904-8d4d-be2167bc3cf2', 'b7ffc973-45ec-47a3-83f3-e6f9f65527e3', 'aeba7807-fbd3-4cb7-85fb-da812cb0e4fa', 2, 10);

INSERT INTO BILL_DETAIL VALUES ('b7775404-27eb-4c27-80ea-570295a22b15', 'd05d58db-e622-4f89-b733-96d6823019a8', 'b2c958a7-a0ae-4d88-8ab8-55572e4b5df6', 3, 10);
INSERT INTO BILL_DETAIL VALUES ('ee4f6019-f857-488d-abf1-bda1a7d169db', 'd05d58db-e622-4f89-b733-96d6823019a8', 'b885ebc8-c67c-416b-8119-8dba0a554b1c', 2, 19);
INSERT INTO BILL_DETAIL VALUES ('2a7e7b89-33d8-46da-a8de-661c4a106e43', 'd05d58db-e622-4f89-b733-96d6823019a8', '94610784-5c90-4c9b-8d29-e851d7a2c74f', 4, 6);

INSERT INTO BILL_DETAIL VALUES ('26d61a0b-124d-4d57-8abd-8d0042c85b5e', 'ce4f5e33-019a-445d-bdb6-fbc442d6da44', '6ea938b1-9636-4a08-8aab-723cad2e834c', 5, 12);
INSERT INTO BILL_DETAIL VALUES ('56417857-cbd6-4829-9890-b42f20f7b08d', 'ce4f5e33-019a-445d-bdb6-fbc442d6da44', 'eea30007-aeaf-4c9a-9b06-52960f19f836', 4, 3);

INSERT INTO BILL_DETAIL VALUES ('2b42a3d5-b23f-42bb-b1fc-4655aef121b3', '435dc71d-f51f-426b-9422-18ac8c2fcac6', '13b760ae-f8a6-477b-b79e-71847ec4cdf9', 1, 10);
INSERT INTO BILL_DETAIL VALUES ('6458a947-02c1-4221-83e7-a544de15aa71', '435dc71d-f51f-426b-9422-18ac8c2fcac6', '27a95f9d-52b2-4c3a-8397-38dae35a64a4', 3, 5);
INSERT INTO BILL_DETAIL VALUES ('a00cf598-1e56-47ee-8e34-b1228136c9f6', '435dc71d-f51f-426b-9422-18ac8c2fcac6', '066a1f4b-b297-4e8e-9242-b3a0100d99b9', 2, 6);