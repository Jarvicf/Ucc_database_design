/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     25/10/2023 01:23:37 p. m.                    */
/*==============================================================*/


/*==============================================================*/
/* Table: TIPO_CLIENTE                                          */
/*==============================================================*/
CREATE TABLE TIPO_CLIENTE  (
   ID_TIPO_CLIENTE      VARCHAR(2)                      NOT NULL,
   ID_DIRECCION         NUMBER(10)                      NOT NULL,
   ID_TIPO_TELEFONO     VARCHAR(2)                      NOT NULL,
   ID_EMAIL             NUMBER(10)                      NOT NULL,
   ID_TIPO_DOCUMENTO    NUMBER(2),
   CONSTRAINT PK_TIPO_CLIENTE PRIMARY KEY (ID_TIPO_CLIENTE)
);

/*==============================================================*/
/* Table: TIPO_DIRECCION                                        */
/*==============================================================*/
CREATE TABLE TIPO_DIRECCION  (
   ID_DIRECCION         NUMBER(10)                      NOT NULL,
   DESCRIPCION          VARCHAR(50),
   CIUDAD               VARCHAR(50),
   PAIS                 VARCHAR(50),
   CONSTRAINT PK_TIPO_DIRECCION PRIMARY KEY (ID_DIRECCION)
);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
CREATE TABLE TIPO_DOCUMENTO  (
   ID_TIPO_DOCUMENTO    NUMBER(2)                       NOT NULL,
   DESCRIPCION          VARCHAR(50),
   CONSTRAINT PK_TIPO_DOCUMENTO PRIMARY KEY (ID_TIPO_DOCUMENTO)
);

/*==============================================================*/
/* Table: TIPO_EMAILS                                           */
/*==============================================================*/
CREATE TABLE TIPO_EMAILS  (
   ID_EMAIL             NUMBER(10)                      NOT NULL,
   DESCRIPCION          VARCHAR(50),
   CONSTRAINT PK_TIPO_EMAILS PRIMARY KEY (ID_EMAIL)
);

/*==============================================================*/
/* Table: TIPO_TELEFONO                                         */
/*==============================================================*/
CREATE TABLE TIPO_TELEFONO  (
   ID_TIPO_TELEFONO     VARCHAR(2)                      NOT NULL,
   TIPO                 NUMERIC(2),
   NUMERO               NUMERIC(10),
   CONSTRAINT PK_TIPO_TELEFONO PRIMARY KEY (ID_TIPO_TELEFONO)
);

ALTER TABLE TIPO_CLIENTE
   ADD CONSTRAINT FK_TIPO_CLI_REF_DIRECCION FOREIGN KEY (ID_DIRECCION)
      REFERENCES TIPO_DIRECCION (ID_DIRECCION);

ALTER TABLE TIPO_CLIENTE
   ADD CONSTRAINT FK_TIPO_CLI_REF_EMAILS FOREIGN KEY (ID_EMAIL)
      REFERENCES TIPO_EMAILS (ID_EMAIL);

ALTER TABLE TIPO_CLIENTE
   ADD CONSTRAINT FK_TIPO_CLI_REF_TIPO_DOC FOREIGN KEY (ID_TIPO_DOCUMENTO)
      REFERENCES TIPO_DOCUMENTO (ID_TIPO_DOCUMENTO);

ALTER TABLE TIPO_CLIENTE
   ADD CONSTRAINT FK_TIPO_CLI_REF_TIPO_TEL FOREIGN KEY (ID_TIPO_TELEFONO)
      REFERENCES TIPO_TELEFONO (ID_TIPO_TELEFONO);

