/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     11/11/2023 09:45:50 a. m.                    */
/*==============================================================*/


/*==============================================================*/
/* Table: DOCUMENTO_IDENTIDAD                                   */
/*==============================================================*/
CREATE TABLE DOCUMENTO_IDENTIDAD  (
   ID_DOCUMENTO         NUMERIC(2)                      NOT NULL,
   ID_ESTADO            NUMERIC(1),
   DESC_DOCUMENTO       VARCHAR(20),
   CONSTRAINT PK_DOCUMENTO_IDENTIDAD PRIMARY KEY (ID_DOCUMENTO)
);

/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
CREATE TABLE EQUIPO  (
   ID_EQUIPO            NUMERIC(5)                      NOT NULL,
   ID_JUGADOR           NUMERIC(10)                     NOT NULL,
   ID_TECNICO           NUMERIC(10)                     NOT NULL,
   NOMBRE_EQUIPO        VARCHAR(20),
   RUTA_ESCUDO          VARCHAR(100),
   CONSTRAINT PK_EQUIPO PRIMARY KEY (ID_EQUIPO)
);

/*==============================================================*/
/* Table: ESTADOS                                               */
/*==============================================================*/
CREATE TABLE ESTADOS  (
   ID_ESTADO            NUMERIC(1)                      NOT NULL,
   DESC_ESTADO          VARCHAR(20),
   CONSTRAINT PK_ESTADOS PRIMARY KEY (ID_ESTADO)
);

/*==============================================================*/
/* Table: GOLES                                                 */
/*==============================================================*/
CREATE TABLE GOLES  (
   ID_REGISTRO_GOLES    NUMERIC(10)                     NOT NULL,
   ID_PARTIDO           NUMERIC(10),
   ID_JUGADOR           NUMERIC(10),
   GOL_MINUTO           NUMERIC(2),
   CONSTRAINT PK_GOLES PRIMARY KEY (ID_REGISTRO_GOLES)
);

/*==============================================================*/
/* Table: JUGADOR                                               */
/*==============================================================*/
CREATE TABLE JUGADOR  (
   ID_JUGADOR           NUMERIC(10)                     NOT NULL,
   NUMERO_DOCUMENTO     NUMERIC(10)                     NOT NULL,
   ID_PIERNA_HABIL      NUMERIC(1, 0)                   NOT NULL,
   ID_TIPO_POSICION_JUGADOR NUMERIC(2, 0)                   NOT NULL,
   APODO                VARCHAR(20),
   CONSTRAINT PK_JUGADOR PRIMARY KEY (ID_JUGADOR)
);

/*==============================================================*/
/* Table: MINUTOS                                               */
/*==============================================================*/
CREATE TABLE MINUTOS  (
   ID_REGISTRO_MINUTOS  NUMERIC(10)                     NOT NULL,
   ID_PARTIDO           NUMERIC(10),
   ID_JUGADOR           NUMERIC(10),
   CANTIDAD_MINUTOS_JUGADOS NUMERIC(2),
   CONSTRAINT PK_MINUTOS PRIMARY KEY (ID_REGISTRO_MINUTOS)
);

/*==============================================================*/
/* Table: PARTIDOS                                              */
/*==============================================================*/
CREATE TABLE PARTIDOS  (
   ID_PARTIDO           NUMERIC(10)                     NOT NULL,
   ID_TORNEO            NUMERIC(2)                      NOT NULL,
   ID_EQUIPO            NUMERIC(5),
   FECHA_PARTIDO        TIMESTAMP WITH TIME ZONE,
   HORA_PARTIDO         TIMESTAMP WITH TIME ZONE,
   ID_EQUIPO_RIVAL      NUMERIC(5),
   ID_EQUIPO_GANADOR    NUMERIC(2),
   ID_EQUIPO_PERDEDOR   NUMERIC(2),
   CONSTRAINT PK_PARTIDOS PRIMARY KEY (ID_PARTIDO)
);

/*==============================================================*/
/* Table: PASES                                                 */
/*==============================================================*/
CREATE TABLE PASES  (
   ID_REGISTRO_PASES    NUMERIC(20)                     NOT NULL,
   ID_JUGADOR           NUMERIC(10)                     NOT NULL,
   ID_PARTIDO           NUMERIC(10)                     NOT NULL,
   PASES_CORRECTO       NUMERIC(2),
   PASES_ERRONEOS       NUMERIC(22),
   CONSTRAINT PK_PASES PRIMARY KEY (ID_REGISTRO_PASES)
);

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
CREATE TABLE SEXO  (
   ID_SEXO              NUMERIC(1)                      NOT NULL,
   ID_ESTADO            NUMERIC(1),
   DESC_SEXO            VARCHAR(20),
   CONSTRAINT PK_SEXO PRIMARY KEY (ID_SEXO)
);

/*==============================================================*/
/* Table: TARJETAS                                              */
/*==============================================================*/
CREATE TABLE TARJETAS  (
   ID_REGISTRO_TARJETAS NUMERIC(10)                     NOT NULL,
   ID_PARTIDO           NUMERIC(10)                     NOT NULL,
   ID_JUGADOR           NUMERIC(10)                     NOT NULL,
   TOTAL__TARJETAS_AMARILLA NUMERIC(1),
   TOTAL__TARJETAS_ROJAS NUMERIC(1),
   CONSTRAINT PK_TARJETAS PRIMARY KEY (ID_REGISTRO_TARJETAS)
);

/*==============================================================*/
/* Table: TECNICO                                               */
/*==============================================================*/
CREATE TABLE TECNICO  (
   ID_TECNICO           NUMERIC(10)                     NOT NULL,
   NUMERO_DOCUMENTO     NUMERIC(10)                     NOT NULL,
   CONSTRAINT PK_TECNICO PRIMARY KEY (ID_TECNICO)
);

/*==============================================================*/
/* Table: TIPO_PIERNA_HABIL                                     */
/*==============================================================*/
CREATE TABLE TIPO_PIERNA_HABIL  (
   ID_PIERNA_HABIL      NUMERIC(1, 0)                   NOT NULL,
   DESC_PIERNA_HABIL    VARCHAR(20),
   CONSTRAINT PK_TIPO_PIERNA_HABIL PRIMARY KEY (ID_PIERNA_HABIL)
);

/*==============================================================*/
/* Table: TIPO_POSICIONES_JUGADOR                               */
/*==============================================================*/
CREATE TABLE TIPO_POSICIONES_JUGADOR  (
   ID_TIPO_POSICION_JUGADOR NUMERIC(2, 0)                   NOT NULL,
   ID_TIPO_POSICION_TERRENO NUMERIC(2, 0)                   NOT NULL,
   DESC_TIPO_POSICION_JUGADOR VARCHAR(20),
   CONSTRAINT PK_TIPO_POSICIONES_JUGADOR PRIMARY KEY (ID_TIPO_POSICION_JUGADOR)
);

/*==============================================================*/
/* Table: TIPO_POSICIONES_TERRENO                               */
/*==============================================================*/
CREATE TABLE TIPO_POSICIONES_TERRENO  (
   ID_TIPO_POSICION_TERRENO NUMERIC(2, 0)                   NOT NULL,
   DESC_TIPO_POSICION_TERRENO VARCHAR(20),
   CONSTRAINT PK_TIPO_POSICIONES_TERRENO PRIMARY KEY (ID_TIPO_POSICION_TERRENO)
);

/*==============================================================*/
/* Table: TIPO_USUARIO                                          */
/*==============================================================*/
CREATE TABLE TIPO_USUARIO  (
   ID_TIPO_USUARIO      NUMERIC(2)                      NOT NULL,
   DESC_TIPO_USUARIO    VARCHAR(20),
   CONSTRAINT PK_TIPO_USUARIO PRIMARY KEY (ID_TIPO_USUARIO)
);

/*==============================================================*/
/* Table: TORNEOS                                               */
/*==============================================================*/
CREATE TABLE TORNEOS  (
   ID_TORNEO            NUMERIC(2)                      NOT NULL,
   NOMBRE_TORNEO        VARCHAR(50),
   RUTA_IMAGEN          VARCHAR(100),
   CONSTRAINT PK_TORNEOS PRIMARY KEY (ID_TORNEO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE USUARIO  (
   NUMERO_DOCUMENTO     NUMERIC(10)                     NOT NULL,
   ID_DOCUMENTO         NUMERIC(2)                      NOT NULL,
   ID_SEXO              NUMERIC(1)                      NOT NULL,
   ID_TIPO_USUARIO      NUMERIC(2)                      NOT NULL,
   NOMBRE_              VARCHAR(20),
   APELLIDO             VARCHAR(20),
   FECHANACIMIENTO      TIMESTAMP,
   DIRECCION            VARCHAR(20),
   TELEFONO             VARCHAR(20),
   EMAIL                VARCHAR(50),
   PESO                 FLOAT,
   ESTURA               FLOAT,
   RUTA_FOTO            VARCHAR(100),
   CONSTRAINT PK_USUARIO PRIMARY KEY (NUMERO_DOCUMENTO)
);

ALTER TABLE DOCUMENTO_IDENTIDAD
   ADD CONSTRAINT FK_DOCUMENT_REF_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO);

ALTER TABLE EQUIPO
   ADD CONSTRAINT FK_EQUIPO_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR);

ALTER TABLE EQUIPO
   ADD CONSTRAINT FK_EQUIPO_REF_TECNICO FOREIGN KEY (ID_TECNICO)
      REFERENCES TECNICO (ID_TECNICO);

ALTER TABLE GOLES
   ADD CONSTRAINT FK_GOLES_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR);

ALTER TABLE GOLES
   ADD CONSTRAINT FK_GOLES_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO);

ALTER TABLE JUGADOR
   ADD CONSTRAINT FK_JUGADOR_REF_TIPO_PIE FOREIGN KEY (ID_PIERNA_HABIL)
      REFERENCES TIPO_PIERNA_HABIL (ID_PIERNA_HABIL);

ALTER TABLE JUGADOR
   ADD CONSTRAINT FK_JUGADOR_REF_TIPO_POS FOREIGN KEY (ID_TIPO_POSICION_JUGADOR)
      REFERENCES TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR);

ALTER TABLE JUGADOR
   ADD CONSTRAINT FK_JUGADOR_REF_USUARIO FOREIGN KEY (NUMERO_DOCUMENTO)
      REFERENCES USUARIO (NUMERO_DOCUMENTO);

ALTER TABLE MINUTOS
   ADD CONSTRAINT FK_MINUTOS_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR);

ALTER TABLE MINUTOS
   ADD CONSTRAINT FK_MINUTOS_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO);

ALTER TABLE PARTIDOS
   ADD CONSTRAINT FK_PARTIDOS_REF_TORNEOS FOREIGN KEY (ID_TORNEO)
      REFERENCES TORNEOS (ID_TORNEO);

ALTER TABLE PARTIDOS
   ADD CONSTRAINT FK_PARTIDOS_REFERENCE_EQUIPO FOREIGN KEY (ID_EQUIPO)
      REFERENCES EQUIPO (ID_EQUIPO);

ALTER TABLE PASES
   ADD CONSTRAINT FK_PASES_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR);

ALTER TABLE PASES
   ADD CONSTRAINT FK_PASES_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO);

ALTER TABLE SEXO
   ADD CONSTRAINT FK_SEXO_REF_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO);

ALTER TABLE TARJETAS
   ADD CONSTRAINT FK_TARJETAS_REF_JUGADOR FOREIGN KEY (ID_JUGADOR)
      REFERENCES JUGADOR (ID_JUGADOR);

ALTER TABLE TARJETAS
   ADD CONSTRAINT FK_TARJETAS_REF_PARTIDOS FOREIGN KEY (ID_PARTIDO)
      REFERENCES PARTIDOS (ID_PARTIDO);

ALTER TABLE TECNICO
   ADD CONSTRAINT FK_TECNICO_REF_USUARIO FOREIGN KEY (NUMERO_DOCUMENTO)
      REFERENCES USUARIO (NUMERO_DOCUMENTO);

ALTER TABLE TIPO_POSICIONES_JUGADOR
   ADD CONSTRAINT FK_TIPO_POSJ_REF_TIPO_POST FOREIGN KEY (ID_TIPO_POSICION_TERRENO)
      REFERENCES TIPO_POSICIONES_TERRENO (ID_TIPO_POSICION_TERRENO);

ALTER TABLE USUARIO
   ADD CONSTRAINT FK_USUARIO_REF_DOCU_IDENTI FOREIGN KEY (ID_DOCUMENTO)
      REFERENCES DOCUMENTO_IDENTIDAD (ID_DOCUMENTO);

ALTER TABLE USUARIO
   ADD CONSTRAINT FK_USUARIO_REF_SEXO FOREIGN KEY (ID_SEXO)
      REFERENCES SEXO (ID_SEXO);

ALTER TABLE USUARIO
   ADD CONSTRAINT FK_USUARIO_REF_TIPO_USUARIO FOREIGN KEY (ID_TIPO_USUARIO)
      REFERENCES TIPO_USUARIO (ID_TIPO_USUARIO);

