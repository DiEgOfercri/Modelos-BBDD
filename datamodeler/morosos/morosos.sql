-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2023-09-29 09:54:36 CEST
--   sitio:      Oracle Database 21c
--   tipo:      Oracle Database 21c



DROP TABLE cliente CASCADE CONSTRAINTS;

DROP TABLE factura CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE cliente (
    id        NUMBER NOT NULL,
    nombre    VARCHAR2(50),
    apellidos VARCHAR2(50),
    direccion VARCHAR2(50),
    nif       CHAR(10)
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id );

CREATE TABLE factura (
    id         NUMBER NOT NULL,
    importe    NUMBER,
    fecha      DATE,
    pagada     NUMBER,
    cliente_id NUMBER NOT NULL
);

ALTER TABLE factura ADD CONSTRAINT factura_pk PRIMARY KEY ( id );

ALTER TABLE factura
    ADD CONSTRAINT factura_cliente_fk FOREIGN KEY ( cliente_id )
        REFERENCES cliente ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              3
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
