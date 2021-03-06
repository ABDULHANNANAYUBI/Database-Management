-- Generated by Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   at:        2021-11-09 13:07:37 EET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE category (
    category_id   numeric(15) NOT NULL,
    category_name varchar(100)
);

ALTER TABLE category ADD CONSTRAINT category_pk PRIMARY KEY ( category_id );

CREATE TABLE category_producer (
    category_category_id numeric(15) NOT NULL,
    producer_producer_id numeric(15) NOT NULL
);

ALTER TABLE category_producer ADD CONSTRAINT relation_9_pk PRIMARY KEY ( category_category_id,
                                                                         producer_producer_id );

CREATE TABLE customer (
    customer_id          numeric(15) NOT NULL,
    customer_name        varchar(30),
    customer_dateofbirth DATE,
    customer_adress      varchar(50),
    customer_phone       numeric(15),
    customer_email       varchar(100)
);

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( customer_id );

CREATE TABLE customer_product (
    product_product_id   numeric(15) NOT NULL,
    customer_customer_id numeric(15) NOT NULL
);

ALTER TABLE customer_product ADD CONSTRAINT customer_product_pk PRIMARY KEY ( product_product_id,
                                                                              customer_customer_id );

CREATE TABLE employee (
    employee_id          numeric(15) NOT NULL,
    employee_name        varchar(50),
    employee_dateofbirth DATE,
    employee_salary      INTEGER,
    employement_date     DATE,
    employee_adress      varchar(50),
    employee_phone       numeric(15),
    employee_email       varchar(100),
    store_store_id       numeric(15) NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( employee_id );

CREATE TABLE producer (
    producer_id   numeric(15) NOT NULL,
    producer_name varchar(50)
);

ALTER TABLE producer ADD CONSTRAINT producer_pk PRIMARY KEY ( producer_id );

CREATE TABLE product (
    product_id           numeric(15) NOT NULL,
    product_name         varchar(100),
    product_price        INTEGER,
    product_date         DATE,
    product_description  varchar(100),
    category_category_id numeric(15)
);

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( product_id );

CREATE TABLE product_store (
    store_store_id     numeric(15) NOT NULL,
    product_product_id numeric(15) NOT NULL
);

ALTER TABLE product_store ADD CONSTRAINT product_store_pk PRIMARY KEY ( store_store_id,
                                                                        product_product_id );

CREATE TABLE store (
    store_id     numeric(15) NOT NULL,
    store_name   varchar(50),
    store_adress varchar(50),
    store_phone  numeric(15),
    store_email  varchar(100)
);

ALTER TABLE store ADD CONSTRAINT store_pk PRIMARY KEY ( store_id );

ALTER TABLE customer_product
    ADD CONSTRAINT customer_product_customer_fk FOREIGN KEY ( customer_customer_id )
        REFERENCES customer ( customer_id );

ALTER TABLE customer_product
    ADD CONSTRAINT customer_product_product_fk FOREIGN KEY ( product_product_id )
        REFERENCES product ( product_id );

ALTER TABLE employee
    ADD CONSTRAINT employee_store_fk FOREIGN KEY ( store_store_id )
        REFERENCES store ( store_id );

ALTER TABLE product
    ADD CONSTRAINT product_category_fk FOREIGN KEY ( category_category_id )
        REFERENCES category ( category_id );

ALTER TABLE product_store
    ADD CONSTRAINT product_store_product_fk FOREIGN KEY ( product_product_id )
        REFERENCES product ( product_id );

ALTER TABLE product_store
    ADD CONSTRAINT product_store_store_fk FOREIGN KEY ( store_store_id )
        REFERENCES store ( store_id );

ALTER TABLE category_producer
    ADD CONSTRAINT relation_9_category_fk FOREIGN KEY ( category_category_id )
        REFERENCES category ( category_id );

ALTER TABLE category_producer
    ADD CONSTRAINT relation_9_producer_fk FOREIGN KEY ( producer_producer_id )
        REFERENCES producer ( producer_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             0
-- ALTER TABLE                             17
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
