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
