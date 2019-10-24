create database ventaempresa
	default character set utf8;
    use venta_empresa;
create table CUSTOMER (
	CUSTNO char(8) NOT NULL COMMENT 'Contiene el identificador del cliente.',
	CUSTFIRSTNAME varchar(30) NOT NULL COMMENT 'Contiene el nombre del cliente.',
	CUSTLASTNAME varchar(30) NOT NULL COMMENT 'Contiene el apellido del cliente.',
	CUSTCITY varchar(30) NULL COMMENT 'La cuidad donde se encuentra el cliente.',
    CUSTSTATE char(2) NULL COMMENT 'EL estado donde se encuentra el cliente.',
    CUSTZIP char(9) NULL COMMENT 'Contiene el numero telefonico del cliente.',
    CUSTBAL char(3) NULL COMMENT 'Contiene el valor de la compra.',
    CONSTRAINT CUSTOMER PRIMARY KEY (CUSTNO)
) COMMENT 'Esta tabla contiene los datos del cliente';
select * from CUSTOMER;

create table EMPLOYEE (
	EMPNO char(8) NOT NULL COMMENT 'Contiene el identificador del empleado.',
	EMPFIRSTNAME varchar(30) NOT NULL COMMENT 'contiene el nombre del empleado.',
	EMPLASTNAME varchar(30) NOT NULL COMMENT 'contiene el apellido del empleado.',
	EMPPHONE char(10) NULL COMMENT 'contiene el numero telefonico del empleado.',
    EMPEMAIL varchar(30) NOT NULL COMMENT 'contiene el email del empleado.',
    CONSTRAINT EMPLOYEE PRIMARY KEY (EMPNO)
) COMMENT 'Esta tabla contiene los datos del empleado';
select *from EMPLOYEE;

create table ORDERTBL (
	ORDNO char(8)  NULL COMMENT 'Contiene el orden numerico del pedido.',
	ORDDATE date NOT NULL COMMENT 'Contiene la fecha de la venta.',
	CUSTNO char(8) NOT NULL COMMENT 'Contiene el identificador del cliente.',
	EMPNO char(8) NOT NULL COMMENT 'Contiene el identificador del empleado.',
    CONSTRAINT ORDERTBL PRIMARY KEY (ORDNO)
) COMMENT 'Esta tabla contiene los datos de la venta realizada';
select * from ORDERTBL;

-- Reference: CUSTOMER_ORDERTBL (table: CUSTOMER)
ALTER TABLE ORDERTBL ADD CONSTRAINT ORDERTBL_CUSTOMER FOREIGN KEY ORDERTBL_CUSTOMER (CUSTNO) 
REFERENCES CUSTOMER (CUSTNO);

-- Reference: EMPLOYEE_ORDERTBL (table: EMPLOYEE)
ALTER TABLE ORDERTBL ADD CONSTRAINT ORDERTBL_EMPLOYEE FOREIGN KEY ORDERTBL_EMPLOYEE (EMPNO) 
REFERENCES EMPLOYEE (EMPNO);