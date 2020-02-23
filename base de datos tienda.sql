DELIMITER $$
DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;
CREATE TABLE productos (id_producto INT,nombre VARCHAR(30),precio INT,id_categoria INT);
CREATE TABLE categoria (id_categoria INT,desc_categoria varchar(30));
CREATE TABLE cliente (id_cliente INT,nombre VARCHAR(30));
CREATE TABLE ventas (id_producto INT,id_cliente INT,correlativo INT);
--
INSERT INTO productos VALUES(1,'laptop gamer',1200,1);
INSERT INTO productos VALUES(2,'golosinas x mayor',500,2);
INSERT INTO productos VALUES(3,'arroz x mayor',300,3);
--
INSERT INTO categoria VALUES(1,'electronico computo');
INSERT INTO categoria VALUES(2,'golosinas');
INSERT INTO categoria VALUES(3,'abarrotes');
--
INSERT INTO cliente VALUES(1,'juan');
INSERT INTO cliente VALUES(2,'joset');
INSERT INTO cliente VALUES(3,'cucho');
--
INSERT INTO ventas VALUES(1,1,2);
INSERT INTO ventas VALUES(2,2,2);
INSERT INTO ventas VALUES(3,3,3);
INSERT INTO ventas VALUES(1,2,3);
INSERT INTO ventas VALUES(3,2,1);
$$
DELIMITER  ;
