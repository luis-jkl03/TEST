CREATE DATABASE TEST
USE TEST

CREATE TABLE VENTAS(
    VENTA_ID int NOT NULL,
    VENTA_NAME varchar(30) not NULL,
    VENTA_DES varchar(50) not NULL
);

CREATE UNIQUE INDEX PK_VENTAS ON VENTAS(venta_id);

ALTER TABLE VENTAS
ADD PRIMARY KEY (VENTA_ID)

CREATE SEQUENCE VENTAS_SEQ
START WITH 1
MINVALUE 1
MAXVALUE 99999999999999
NO CYCLE
CACHE 20;

--Example to use sequence in SQL SERVER
--INSERT INTO VENTAS(VENTA_ID, VENTA_NAME, VENTA_DES)
--VALUES(NEXT VALUE FOR VENTAS_SEQ, 'VENTA1', 'La venta 1')
