/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     15/10/2023 01:50:16 p. m.                    */
/*==============================================================*/


/*==============================================================*/
/* Table: AEROLINIAS                                            */
/*==============================================================*/
CREATE TABLE AEROLINIAS  (
   ID_AEROLINIA         NUMERIC(5)                      NOT NULL,
   NOMBRE_AEROLINIA     VARCHAR(50),
   NIT_AEROLINIA        NUMERIC(10),
   CONSTRAINT PK_AEROLINIAS PRIMARY KEY (ID_AEROLINIA)
);

/*==============================================================*/
/* Table: AVION                                                 */
/*==============================================================*/
CREATE TABLE AVION  (
   ID_AVION             NUMERIC(3)                      NOT NULL,
   NOMBRE_AVION         VARCHAR(50),
   MODELO_AVION         VARCHAR(20),
   CONSTRAINT PK_AVION PRIMARY KEY (ID_AVION)
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
CREATE TABLE CIUDAD  (
   ID_CIUDAD            NUMERIC(3)                      NOT NULL,
   ID_DEPARTAMENTO      NUMERIC(3),
   ID_PAIS              NUMERIC(3),
   CONSTRAINT PK_CIUDAD PRIMARY KEY (ID_CIUDAD)
);

/*==============================================================*/
/* Table: CIUDAD_DESTINO                                        */
/*==============================================================*/
CREATE TABLE CIUDAD_DESTINO  (
   ID_CIUDAD_DESTINO    NUMERIC(5)                      NOT NULL,
   ID_CIUDAD            NUMERIC(3),
   CONSTRAINT PK_CIUDAD_DESTINO PRIMARY KEY (ID_CIUDAD_DESTINO)
);

/*==============================================================*/
/* Table: CIUDAD_ORIGEN                                         */
/*==============================================================*/
CREATE TABLE CIUDAD_ORIGEN  (
   ID_CIUDAD_ORIGEN     NUMERIC(5)                      NOT NULL,
   ID_CIUDAD            NUMERIC(3),
   CONSTRAINT PK_CIUDAD_ORIGEN PRIMARY KEY (ID_CIUDAD_ORIGEN)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
CREATE TABLE DEPARTAMENTO  (
   ID_DEPARTAMENTO      NUMERIC(3)                      NOT NULL,
   ID_PAIS              NUMERIC(3),
   CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
CREATE TABLE PAIS  (
   ID_PAIS              NUMERIC(3)                      NOT NULL,
   CONSTRAINT PK_PAIS PRIMARY KEY (ID_PAIS)
);

/*==============================================================*/
/* Table: REGISTRO_VUELOS                                       */
/*==============================================================*/
CREATE TABLE REGISTRO_VUELOS  (
   ID_REGISTRO_VUELOS   NUMERIC(10)                     NOT NULL,
   ID_VUELO             NUMERIC(10)                     NOT NULL,
   ID_AEROLINIA         NUMERIC(5)                      NOT NULL,
   ID_AVION             NUMERIC(3),
   ID_TIPO_CLIENTE      VARCHAR(2),
   FECHA_SALIDA         TIMESTAMP WITH TIME ZONE,
   FECHA_LLEGADA        TIMESTAMP WITH TIME ZONE,
   COSTO                NUMERIC(10),
   FECHA_REGISTRO       TIMESTAMP WITH TIME ZONE,
   HORA_REGISTRO        TIMESTAMP WITH TIME ZONE,
   USUARIO_REGISTRO     VARCHAR(20),
   CONSTRAINT PK_REGISTRO_VUELOS PRIMARY KEY (ID_REGISTRO_VUELOS)
);

/*==============================================================*/
/* Table: REGISTRO_VUELOS_LOGS                                  */
/*==============================================================*/
CREATE TABLE REGISTRO_VUELOS_LOGS  (
   ID                   NUMERIC(20)                     NOT NULL,
   ID_REGISTRO_VUELOS   NUMERIC(10),
   FECHA                TIMESTAMP WITH TIME ZONE,
   HORA                 TIMESTAMP WITH TIME ZONE,
   ID_VUELO             NUMERIC(10)                     NOT NULL,
   ID_AEROLINIA         NUMERIC(5)                      NOT NULL,
   ID_AVION             NUMERIC(3)                      NOT NULL,
   ID_TIPO_CLIENTE      VARCHAR(2),
   FECHA_SALIDA         TIMESTAMP WITH TIME ZONE,
   FECHA_LLEGADA        TIMESTAMP WITH TIME ZONE,
   COSTO                NUMERIC(10),
   FECHA_REGISTRO       TIMESTAMP WITH TIME ZONE,
   HORA_REGISTRO        TIMESTAMP WITH TIME ZONE,
   USUARIO_REGISTRO     VARCHAR(20),
   CONSTRAINT PK_REGISTRO_VUELOS_LOGS PRIMARY KEY (ID)
);

/*==============================================================*/
/* Table: VUELOS                                                */
/*==============================================================*/
CREATE TABLE VUELOS  (
   ID_VUELO             NUMERIC(10)                     NOT NULL,
   ID_CIUDAD_ORIGEN     NUMERIC(5),
   ID_CIUDAD_DESTINO    NUMERIC(5),
   CONSTRAINT PK_VUELOS PRIMARY KEY (ID_VUELO)
);

ALTER TABLE CIUDAD
   ADD CONSTRAINT FK_CIUDAD_REF_DEPARTAMENTO FOREIGN KEY (ID_DEPARTAMENTO)
      REFERENCES DEPARTAMENTO (ID_DEPARTAMENTO);

ALTER TABLE CIUDAD
   ADD CONSTRAINT FK_CIUDAD_REF_PAIS FOREIGN KEY (ID_PAIS)
      REFERENCES PAIS (ID_PAIS);

ALTER TABLE CIUDAD_DESTINO
   ADD CONSTRAINT FK_CIUDAD_DESTINO_REF_CIUDAD FOREIGN KEY (ID_CIUDAD)
      REFERENCES CIUDAD (ID_CIUDAD);

ALTER TABLE CIUDAD_ORIGEN
   ADD CONSTRAINT FK_CIUDAD_ORIGEN_REF_CIUDAD FOREIGN KEY (ID_CIUDAD)
      REFERENCES CIUDAD (ID_CIUDAD);

ALTER TABLE DEPARTAMENTO
   ADD CONSTRAINT FK_DEPARTAMENTO_REF_PAIS FOREIGN KEY (ID_PAIS)
      REFERENCES PAIS (ID_PAIS);

ALTER TABLE REGISTRO_VUELOS
   ADD CONSTRAINT FK_REGISTRO_REF_AEROLINIA FOREIGN KEY (ID_AEROLINIA)
      REFERENCES AEROLINIAS (ID_AEROLINIA);

ALTER TABLE REGISTRO_VUELOS
   ADD CONSTRAINT FK_REGISTRO_REF_AVION FOREIGN KEY (ID_AVION)
      REFERENCES AVION (ID_AVION);

ALTER TABLE REGISTRO_VUELOS
   ADD CONSTRAINT FK_REGISTRO_REF_TIPO_CLI FOREIGN KEY (ID_TIPO_CLIENTE)
      REFERENCES TIPO_CLIENTE (ID_TIPO_CLIENTE);

ALTER TABLE REGISTRO_VUELOS
   ADD CONSTRAINT FK_REGISTRO_REF_VUELOS FOREIGN KEY (ID_VUELO)
      REFERENCES VUELOS (ID_VUELO);

ALTER TABLE REGISTRO_VUELOS_LOGS
   ADD CONSTRAINT FK_REGISTRO_REF_REGISTRO FOREIGN KEY (ID_REGISTRO_VUELOS)
      REFERENCES REGISTRO_VUELOS (ID_REGISTRO_VUELOS);

ALTER TABLE VUELOS
   ADD CONSTRAINT FK_VUELOS_REF_CIUDAD_DESTINO FOREIGN KEY (ID_CIUDAD_DESTINO)
      REFERENCES CIUDAD_DESTINO (ID_CIUDAD_DESTINO);

ALTER TABLE VUELOS
   ADD CONSTRAINT FK_VUELOS_REF_CIUDAD_ORIGEN FOREIGN KEY (ID_CIUDAD_ORIGEN)
      REFERENCES CIUDAD_ORIGEN (ID_CIUDAD_ORIGEN);

