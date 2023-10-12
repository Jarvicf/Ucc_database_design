/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     11/10/2023 07:57:19 p. m.                    */
/*==============================================================*/


/*==============================================================*/
/* Table: CUENTA                                                */
/*==============================================================*/
CREATE TABLE CUENTA  (
   CUENTA_ID            NUMERIC(10)                     NOT NULL,
   FECHA_REGISTRO       TIMESTAMP WITH TIME ZONE,
   FECHA_ACTUALIZACION  TIMESTAMP WITH TIME ZONE,
   SALDO                DECIMAL(12, 2),
   USUARIO              VARCHAR(20),
   IP_CREACION          VARCHAR(16),
   USUARIO_MODIFICACION VARCHAR(20),
   IP_MODIFICACION      VARCHAR(16),
   CONSTRAINT PK_CUENTA PRIMARY KEY (CUENTA_ID)
);

/*==============================================================*/
/* Table: CUENTA_LOGS                                           */
/*==============================================================*/
CREATE TABLE CUENTA_LOGS  (
   ID                   NUMERIC(20)                     NOT NULL,
   CUENTA_ID            NUMERIC(10),
   FECHA_HORA           TIMESTAMP WITH TIME ZONE,
   FECHA_REGISTRO       TIMESTAMP WITH TIME ZONE,
   FECHA_ACTUALIZACION  TIMESTAMP WITH TIME ZONE,
   SALDO                DECIMAL(12, 2),
   USUARIO              VARCHAR(20),
   IP_CREACION          VARCHAR(16),
   USUARIO_MODIFICACION VARCHAR(20),
   IP_MODIFICACION      VARCHAR(16),
   CONSTRAINT PK_CUENTA_LOGS PRIMARY KEY (ID)
);

ALTER TABLE CUENTA_LOGS
   ADD CONSTRAINT FK_CUENTA_LOGS_REF_CUENTA FOREIGN KEY (CUENTA_ID)
      REFERENCES CUENTA (CUENTA_ID);

