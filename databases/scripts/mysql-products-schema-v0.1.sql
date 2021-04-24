SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `productsdb` ;

CREATE SCHEMA IF NOT EXISTS `productsdb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;

USE `productsdb` ;

CREATE TABLE IF NOT EXISTS PRODUCTS (
    PRODUCT_ID          VARCHAR(512),
    PRODUCT_CODE        VARCHAR(512),
    PRODUCT_NAME        VARCHAR(512),
    PRODUCT_DESCRIPTION VARCHAR(512),
    PRODUCT_PRICE       DECIMAL(10,2)
) ENGINE = InnoDB;

ALTER TABLE PRODUCTS ADD CONSTRAINT PK_IMG PRIMARY KEY (PRODUCT_ID);
ALTER TABLE PRODUCTS ADD INDEX(PRODUCT_CODE);

INSERT INTO PRODUCTS VALUES ('b34d4798-8357-415e-a818-82084c616f6d','DNBNP6GC7Y','TV LG 56 Pulgadas','Hermoso televisor para ver todo el contenido smart',7560000);
INSERT INTO PRODUCTS VALUES ('5f862940-bd1c-45ab-b9bb-b7f302a69e92','86ZC5XIV0R','BlueRay Samsung','Reproducer con la mejor definicion tus peliculas',862000);
INSERT INTO PRODUCTS VALUES ('4b97dc13-6382-4db0-961a-fdc1bd810599','FOL8ES7NRX','Play Station 5','Disfruta de horas de diversion',3100000);
INSERT INTO PRODUCTS VALUES ('6d7a2e5c-520b-4dd9-b6a4-9686d9dee990','OXTE1BY1OS','Xbox Serie X','Disfruta de todo el catalogo microsoft',2750000);
INSERT INTO PRODUCTS VALUES ('aeba7807-fbd3-4cb7-85fb-da812cb0e4fa','CEY3O84XA4','Play Station 4','Disfruta todo el catalogo de sony playstation',1100000);
INSERT INTO PRODUCTS VALUES ('b2c958a7-a0ae-4d88-8ab8-55572e4b5df6','B41SKZEWF9','Celular Xiaomi Mi 10','Comunicate en todo momento con xiaomi',1570000);
INSERT INTO PRODUCTS VALUES ('b885ebc8-c67c-416b-8119-8dba0a554b1c','5FXZVPK68E','Portatil MSI PX 60','Estudia y trabaja con la mejor potencia',5864900);
INSERT INTO PRODUCTS VALUES ('94610784-5c90-4c9b-8d29-e851d7a2c74f','6SK4XDCGQL','Bicicleta Bike 360','Ejercita tu cuerpo y llevalo al limite',784300);
INSERT INTO PRODUCTS VALUES ('6ea938b1-9636-4a08-8aab-723cad2e834c','BM5VZS9F8T','Lavadora Whirpool','Tomate tu tiempo y disfruta un relax',3648000);
INSERT INTO PRODUCTS VALUES ('eea30007-aeaf-4c9a-9b06-52960f19f836','I7IPPG0LH5','Licuadora Oster','Prepara los mejores jugos y maltedas',275000);
INSERT INTO PRODUCTS VALUES ('13b760ae-f8a6-477b-b79e-71847ec4cdf9','I03DMXT9R7','iPhone 15','Comucación con estilo',6500000);
INSERT INTO PRODUCTS VALUES ('27a95f9d-52b2-4c3a-8397-38dae35a64a4','P88109Q55X','Control PS5','Controla tu universo',380000);
INSERT INTO PRODUCTS VALUES ('066a1f4b-b297-4e8e-9242-b3a0100d99b9','DZZU0HDWPV','Control Xbox','Controla el contenido de todo tu universo gamer', 350000);
