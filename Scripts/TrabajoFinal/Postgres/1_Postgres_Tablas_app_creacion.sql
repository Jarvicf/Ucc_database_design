/*==============================================================*/
/* DBMS name:      SAP SQL Anywhere 16                          */
/* Created on:     11/11/2023 11:00:57 a. m.                    */
/*==============================================================*/


/*==============================================================*/
/* Table: DOCUMENTO_IDENTIDAD                                   */
/*==============================================================*/
CREATE TABLE DOCUMENTO_IDENTIDAD 
(
   ID_DOCUMENTO         NUMERIC(2)                     NOT NULL,
   ID_ESTADO            NUMERIC(1)                     NULL,
   DESC_DOCUMENTO       VARCHAR(20)                    NULL,
   PRIMARY KEY (ID_DOCUMENTO)
);




/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
CREATE TABLE EQUIPO 
(
   ID_EQUIPO            NUMERIC(5)                     NOT NULL,
   ID_JUGADOR           NUMERIC(10)                    NOT NULL,
   ID_TECNICO           NUMERIC(10)                    NOT NULL,
   NOMBRE_EQUIPO        VARCHAR(20)                    NULL,
   RUTA_ESCUDO          VARCHAR(100)                   NULL,
   PRIMARY KEY  (ID_EQUIPO)
);

/*==============================================================*/
/* Table: ESTADOS                                               */
/*==============================================================*/
CREATE TABLE ESTADOS 
(
   ID_ESTADO            NUMERIC(1)                     NOT NULL,
   DESC_ESTADO          VARCHAR(20)                    NULL,
   PRIMARY KEY  (ID_ESTADO)
);

/*==============================================================*/
/* Table: GOLES                                                 */
/*==============================================================*/
CREATE TABLE GOLES 
(
   ID_REGISTRO_GOLES    NUMERIC(10)                    NOT NULL,
   ID_PARTIDO           NUMERIC(10)                    NULL,
   ID_JUGADOR           NUMERIC(10)                    NULL,
   GOL_MINUTO           NUMERIC(2)                     NULL,
  PRIMARY KEY  (ID_REGISTRO_GOLES)
);

/*==============================================================*/
/* Table: JUGADOR                                               */
/*==============================================================*/
CREATE TABLE JUGADOR 
(
   ID_JUGADOR           NUMERIC(10)                    NOT NULL,
   NUMERO_DOCUMENTO     NUMERIC(10)                    NOT NULL,
   ID_PIERNA_HABIL      NUMERIC(1,0)                   NOT NULL,
   ID_TIPO_POSICION_JUGADOR NUMERIC(2,0)                   NOT NULL,
   APODO                VARCHAR(20)                    NULL,
   PRIMARY KEY  (ID_JUGADOR)
);

/*==============================================================*/
/* Table: MINUTOS                                               */
/*==============================================================*/
CREATE TABLE MINUTOS 
(
   ID_REGISTRO_MINUTOS  NUMERIC(10)                    NOT NULL,
   ID_PARTIDO           NUMERIC(10)                    NULL,
   ID_JUGADOR           NUMERIC(10)                    NULL,
   CANTIDAD_MINUTOS_JUGADOS NUMERIC(2)                     NULL,
  PRIMARY KEY  (ID_REGISTRO_MINUTOS)
);

/*==============================================================*/
/* Table: PARTIDOS                                              */
/*==============================================================*/
CREATE TABLE PARTIDOS 
(
   ID_PARTIDO           NUMERIC(10)                    NOT NULL,
   ID_TORNEO            NUMERIC(2)                     NOT NULL,
   ID_EQUIPO            NUMERIC(5)                     NULL,
   FECHA_PARTIDO        TIMESTAMP                      NULL,
   HORA_PARTIDO         TIMESTAMP                      NULL,
   ID_EQUIPO_RIVAL      NUMERIC(5)                     NULL,
   ID_EQUIPO_GANADOR    NUMERIC(2)                     NULL,
   ID_EQUIPO_PERDEDOR   NUMERIC(2)                     NULL,
   PRIMARY KEY  (ID_PARTIDO)
);

/*==============================================================*/
/* Table: PASES                                                 */
/*==============================================================*/
CREATE TABLE PASES 
(
   ID_REGISTRO_PASES    NUMERIC(20)                    NOT NULL,
   ID_JUGADOR           NUMERIC(10)                    NOT NULL,
   ID_PARTIDO           NUMERIC(10)                    NOT NULL,
   PASES_CORRECTO       NUMERIC(2)                     NULL,
   PASES_ERRONEOS       NUMERIC(22)                    NULL,
   PRIMARY KEY  (ID_REGISTRO_PASES)
);

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
CREATE TABLE SEXO 
(
   ID_SEXO              NUMERIC(1)                     NOT NULL,
   ID_ESTADO            NUMERIC(1)                     NULL,
   DESC_SEXO            VARCHAR(20)                    NULL,
   PRIMARY KEY  (ID_SEXO)
);

/*==============================================================*/
/* Table: TARJETAS                                              */
/*==============================================================*/
CREATE TABLE TARJETAS 
(
   ID_REGISTRO_TARJETAS NUMERIC(10)                    NOT NULL,
   ID_PARTIDO           NUMERIC(10)                    NOT NULL,
   ID_JUGADOR           NUMERIC(10)                    NOT NULL,
   TOTAL__TARJETAS_AMARILLA NUMERIC(1)                     NULL,
   TOTAL__TARJETAS_ROJAS NUMERIC(1)                     NULL,
   PRIMARY KEY  (ID_REGISTRO_TARJETAS)
);

/*==============================================================*/
/* Table: TECNICO                                               */
/*==============================================================*/
CREATE TABLE TECNICO 
(
   ID_TECNICO           NUMERIC(10)                    NOT NULL,
   NUMERO_DOCUMENTO     NUMERIC(10)                    NOT NULL,
   PRIMARY KEY  (ID_TECNICO)
);

/*==============================================================*/
/* Table: TIPO_PIERNA_HABIL                                     */
/*==============================================================*/
CREATE TABLE TIPO_PIERNA_HABIL 
(
   ID_PIERNA_HABIL      NUMERIC(1,0)                   NOT NULL,
   DESC_PIERNA_HABIL    VARCHAR(20)                    NULL,
  PRIMARY KEY  (ID_PIERNA_HABIL)
);

/*==============================================================*/
/* Table: TIPO_POSICIONES_JUGADOR                               */
/*==============================================================*/
CREATE TABLE TIPO_POSICIONES_JUGADOR 
(
   ID_TIPO_POSICION_JUGADOR NUMERIC(2,0)                   NOT NULL,
   ID_TIPO_POSICION_TERRENO NUMERIC(2,0)                   NOT NULL,
   DESC_TIPO_POSICION_JUGADOR VARCHAR(20)                    NULL,
   PRIMARY KEY  (ID_TIPO_POSICION_JUGADOR)
);

/*==============================================================*/
/* Table: TIPO_POSICIONES_TERRENO                               */
/*==============================================================*/
CREATE TABLE TIPO_POSICIONES_TERRENO 
(
   ID_TIPO_POSICION_TERRENO NUMERIC(2,0)                   NOT NULL,
   DESC_TIPO_POSICION_TERRENO VARCHAR(20)                    NULL,
   PRIMARY KEY  (ID_TIPO_POSICION_TERRENO)
);

/*==============================================================*/
/* Table: TIPO_USUARIO                                          */
/*==============================================================*/
CREATE TABLE TIPO_USUARIO 
(
   ID_TIPO_USUARIO      NUMERIC(2)                     NOT NULL,
   DESC_TIPO_USUARIO    VARCHAR(20)                    NULL,
   PRIMARY KEY  (ID_TIPO_USUARIO)
);

/*==============================================================*/
/* Table: TORNEOS                                               */
/*==============================================================*/
CREATE TABLE TORNEOS 
(
   ID_TORNEO            NUMERIC(2)                     NOT NULL ,
   NOMBRE_TORNEO        VARCHAR(50)                    NULL,
   RUTA_IMAGEN          VARCHAR(100)                   NULL,
   PRIMARY KEY  (ID_TORNEO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE USUARIO 
(
   NUMERO_DOCUMENTO     NUMERIC(10)                    NOT NULL,
   ID_DOCUMENTO         NUMERIC(2)                     NOT NULL,
   ID_SEXO              NUMERIC(1)                     NOT NULL,
   ID_TIPO_USUARIO      NUMERIC(2)                     NOT NULL,
   NOMBRE_              VARCHAR(20)                    NULL,
   APELLIDO             VARCHAR(20)                    NULL,
   FECHANACIMIENTO      TIMESTAMP                      NULL,
   DIRECCION            VARCHAR(20)                    NULL,
   TELEFONO             VARCHAR(20)                    NULL,
   EMAIL                VARCHAR(50)                    NULL,
   PESO                 FLOAT                          NULL,
   ESTURA               FLOAT                          NULL,
   RUTA_FOTO            VARCHAR(100)                   NULL,
   PRIMARY KEY  (NUMERO_DOCUMENTO)
);

ALTER TABLE DOCUMENTO_IDENTIDAD
   ADD CONSTRAINT FK_DOCUMENT_REF_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EQUIPO
   ADD CONSTRAINT FK_EQUIPO_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EQUIPO
   ADD CONSTRAINT FK_EQUIPO_REF_TECNICO FOREIGN KEY (ID_TECNICO)
      REFERENCES TECNICO (ID_TECNICO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE GOLES
   ADD CONSTRAINT FK_GOLES_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE GOLES
   ADD CONSTRAINT FK_GOLES_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE JUGADOR
   ADD CONSTRAINT FK_JUGADOR_REF_TIPO_PIE FOREIGN KEY (ID_PIERNA_HABIL)
      REFERENCES TIPO_PIERNA_HABIL (ID_PIERNA_HABIL)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE JUGADOR
   ADD CONSTRAINT FK_JUGADOR_REF_TIPO_POS FOREIGN KEY (ID_TIPO_POSICION_JUGADOR)
      REFERENCES TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE JUGADOR
   ADD CONSTRAINT FK_JUGADOR_REF_USUARIO FOREIGN KEY (NUMERO_DOCUMENTO)
      REFERENCES USUARIO (NUMERO_DOCUMENTO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MINUTOS
   ADD CONSTRAINT FK_MINUTOS_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MINUTOS
   ADD CONSTRAINT FK_MINUTOS_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PARTIDOS
   ADD CONSTRAINT FK_PARTIDOS_REF_TORNEOS FOREIGN KEY (ID_TORNEO)
      REFERENCES TORNEOS (ID_TORNEO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PARTIDOS
   ADD CONSTRAINT FK_PARTIDOS_REFERENCE_EQUIPO FOREIGN KEY (ID_EQUIPO)
      REFERENCES EQUIPO (ID_EQUIPO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PASES
   ADD CONSTRAINT FK_PASES_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PASES
   ADD CONSTRAINT FK_PASES_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE SEXO
   ADD CONSTRAINT FK_SEXO_REF_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE TARJETAS
   ADD CONSTRAINT FK_TARJETAS_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE TARJETAS
   ADD CONSTRAINT FK_TARJETAS_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE TECNICO
   ADD CONSTRAINT FK_TECNICO_REF_USUARIO FOREIGN KEY (NUMERO_DOCUMENTO)
      REFERENCES USUARIO (NUMERO_DOCUMENTO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE TIPO_POSICIONES_JUGADOR
   ADD CONSTRAINT FK_TIPO_POSJ_REF_TIPO_POST FOREIGN KEY (ID_TIPO_POSICION_TERRENO)
      REFERENCES TIPO_POSICIONES_TERRENO (ID_TIPO_POSICION_TERRENO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE USUARIO
   ADD CONSTRAINT FK_USUARIO_REF_DOCU_IDENTI FOREIGN KEY (ID_DOCUMENTO)
      REFERENCES DOCUMENTO_IDENTIDAD (ID_DOCUMENTO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE USUARIO
   ADD CONSTRAINT FK_USUARIO_REF_SEXO FOREIGN KEY (ID_SEXO)
      REFERENCES SEXO (ID_SEXO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE USUARIO
   ADD CONSTRAINT FK_USUARIO_REF_TIPO_USUARIO FOREIGN KEY (ID_TIPO_USUARIO)
      REFERENCES TIPO_USUARIO (ID_TIPO_USUARIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

