INSERT INTO ESTADOS (ID_ESTADO, DESC_ESTADO) VALUES (1, 'ACTIVO');

INSERT INTO ESTADOS (ID_ESTADO, DESC_ESTADO) VALUES (2, 'INACTIVO');

INSERT INTO TIPO_USUARIO (ID_TIPO_USUARIO, DESC_TIPO_USUARIO) VALUES (1, 'TECNICO');

INSERT INTO TIPO_USUARIO (ID_TIPO_USUARIO, DESC_TIPO_USUARIO) VALUES (2, 'JUGADOR');

INSERT INTO TIPO_USUARIO (ID_TIPO_USUARIO, DESC_TIPO_USUARIO) VALUES (3, 'TECNICO');

INSERT INTO TIPO_USUARIO (ID_TIPO_USUARIO, DESC_TIPO_USUARIO) VALUES (4, 'JUGADOR');

INSERT INTO TIPO_USUARIO (ID_TIPO_USUARIO, DESC_TIPO_USUARIO) VALUES (5, 'TECNICO');

INSERT INTO TIPO_POSICIONES_TERRENO (ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_TERRENO) VALUES (1, 'DELATEROS');

INSERT INTO TIPO_POSICIONES_TERRENO (ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_TERRENO) VALUES (2, 'PORTERO');

INSERT INTO TIPO_POSICIONES_TERRENO (ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_TERRENO) VALUES (3, 'DEFENSA');

INSERT INTO TIPO_POSICIONES_TERRENO (ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_TERRENO) VALUES (4, 'CENTRO CAMPO');

INSERT INTO TIPO_PIERNA_HABIL (ID_PIERNA_HABIL, DESC_PIERNA_HABIL) VALUES (1, 'AMBAS');

INSERT INTO TIPO_PIERNA_HABIL (ID_PIERNA_HABIL, DESC_PIERNA_HABIL) VALUES (2, 'DERECHA');

INSERT INTO TIPO_PIERNA_HABIL (ID_PIERNA_HABIL, DESC_PIERNA_HABIL) VALUES (3, 'IZQUIERDA');

INSERT INTO TORNEOS (ID_TORNEO, NOMBRE_TORNEO, RUTA_IMAGEN) VALUES (3, 'TORNEO 2', 'TT5HO76FO6CKMDWQQIU 7GRFD2PUENYB JTVEUYCPHFAU44MXLW029E316CRM5YVDNV3CI4J5CW5S7UL1K68L4HD6SM6K86BEKO ');

INSERT INTO TORNEOS (ID_TORNEO, NOMBRE_TORNEO, RUTA_IMAGEN) VALUES (0, 'TORNEO 3', 'DUQ74TO9D6VM9L4IPX4BK019O0RURBW3LSG4SS0S135 GRDBCIRTOOGAQ302QH X93KDSEXT0FQJR3DDXC25AQFAB9QNMQIQ8ETT');

INSERT INTO TORNEOS (ID_TORNEO, NOMBRE_TORNEO, RUTA_IMAGEN) VALUES (4, 'TORNEO 1', 'G4O3UOG4QM28RNIMTTRU1EOEPKGJTQY2PNP9JGQ RBYPS9DD5UKVQ2YT5XDKU4E1JTXON0LS0BIO83N17J2NO8KCV7MI5UQ7938N');

INSERT INTO TORNEOS (ID_TORNEO, NOMBRE_TORNEO, RUTA_IMAGEN) VALUES (2, 'TORNEO 2', '5HK75CR62MCTNWINNJAWEOY1753MWMTTPMRKKJ5MOMO4WMOPS3398I52G3M02F34BI1YRTQW81 0G2CWADCJVD0VT4H9WMTGO SE');

INSERT INTO TORNEOS (ID_TORNEO, NOMBRE_TORNEO, RUTA_IMAGEN) VALUES (1, 'TORNEO 3', '8 14D08H4AOOK2A8K8ILWXBARY4P745BOXEUI74QRIW6XSL8UDHEWVSYTP3QFN5Q DY8RYBT4O7QFSB9X26QDTD2D1EEC3K1UERJ');

INSERT INTO TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR, ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_JUGADOR) VALUES (1, 1, 'MEDIA PUNTA');

INSERT INTO TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR, ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_JUGADOR) VALUES (2, 1, 'MEDIOCENTRO');

INSERT INTO TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR, ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_JUGADOR) VALUES (3, 2, 'MEDIO CENTRO DEFENSIVO');

INSERT INTO TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR, ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_JUGADOR) VALUES (4, 2, 'INTERIOR');

INSERT INTO TIPO_POSICIONES_JUGADOR (ID_TIPO_POSICION_JUGADOR, ID_TIPO_POSICION_TERRENO, DESC_TIPO_POSICION_JUGADOR) VALUES (5, 3, 'DELANTERO CENTRO');

INSERT INTO SEXO (ID_SEXO, ID_ESTADO, DESC_SEXO) VALUES (1, 1, 'MASCULINO');

INSERT INTO SEXO (ID_SEXO, ID_ESTADO, DESC_SEXO) VALUES (2, 1, 'FEMENINO');

INSERT INTO DOCUMENTO_IDENTIDAD (ID_DOCUMENTO, ID_ESTADO, DESC_DOCUMENTO) VALUES (1, 1, 'TARJETA IDENTIDAD');

INSERT INTO DOCUMENTO_IDENTIDAD (ID_DOCUMENTO, ID_ESTADO, DESC_DOCUMENTO) VALUES (2, 1, 'CEDULA CIUDADANIA');

INSERT INTO DOCUMENTO_IDENTIDAD (ID_DOCUMENTO, ID_ESTADO, DESC_DOCUMENTO) VALUES (3, 2, 'CEDULA EXTRANJERIA');

INSERT INTO USUARIO (NUMERO_DOCUMENTO, ID_DOCUMENTO, ID_SEXO, ID_TIPO_USUARIO, NOMBRE_, APELLIDO, FECHANACIMIENTO, DIRECCION, TELEFONO, EMAIL, PESO, ESTURA, RUTA_FOTO) VALUES (1000000000, 1, 1, 1, 'ANTONIO', 'SALAZAR', '790-3-27 3:7:49', 'CALLE 13 # 112-20', '3318525858', 'MARIA@HOTMAIL.COM', 90, 1.95, '2');

INSERT INTO USUARIO (NUMERO_DOCUMENTO, ID_DOCUMENTO, ID_SEXO, ID_TIPO_USUARIO, NOMBRE_, APELLIDO, FECHANACIMIENTO, DIRECCION, TELEFONO, EMAIL, PESO, ESTURA, RUTA_FOTO) VALUES (1000001522, 1, 1, 1, 'ELENA', 'GUZM�N', '1275-4-27 5:51:22', 'CARRERA 20 # 15-08', '3318535873', 'ROSA@HOTMAIL.COM', 80, 1.87, '3');

INSERT INTO USUARIO (NUMERO_DOCUMENTO, ID_DOCUMENTO, ID_SEXO, ID_TIPO_USUARIO, NOMBRE_, APELLIDO, FECHANACIMIENTO, DIRECCION, TELEFONO, EMAIL, PESO, ESTURA, RUTA_FOTO) VALUES (1000003044, 2, 2, 2, 'TERESA', 'HENR�QUEZ', '413-4-8 1:50:33', 'CALLE 13 # 112-20', '3318545888', 'JOSE@GMAIL.COM', 85, 1.75, '1');

INSERT INTO USUARIO (NUMERO_DOCUMENTO, ID_DOCUMENTO, ID_SEXO, ID_TIPO_USUARIO, NOMBRE_, APELLIDO, FECHANACIMIENTO, DIRECCION, TELEFONO, EMAIL, PESO, ESTURA, RUTA_FOTO) VALUES (1000004566, 2, 2, 2, 'ANGELA', 'SAAVEDRA', '1-1-1 0:0:0', 'CARRERA 20 # 15-08', '3318555903', 'NOMBRE@GMAIL.COM', 60, 1.65, '2');

INSERT INTO USUARIO (NUMERO_DOCUMENTO, ID_DOCUMENTO, ID_SEXO, ID_TIPO_USUARIO, NOMBRE_, APELLIDO, FECHANACIMIENTO, DIRECCION, TELEFONO, EMAIL, PESO, ESTURA, RUTA_FOTO) VALUES (1000006088, 3, , 3, 'MARGARITA', 'NAVARRO', '1482-5-24 7:44:57', 'CALLE 13 # 112-20', '3318565918', 'MARIA@HOTMAIL.COM', 100, 1.6, '3');

INSERT INTO JUGADOR (ID_JUGADOR, NUMERO_DOCUMENTO, ID_PIERNA_HABIL, ID_TIPO_POSICION_JUGADOR, APODO) VALUES (1, 1000000000, 1, 1, 'EL MANCO');

INSERT INTO JUGADOR (ID_JUGADOR, NUMERO_DOCUMENTO, ID_PIERNA_HABIL, ID_TIPO_POSICION_JUGADOR, APODO) VALUES (2, 1000001522, 1, 2, 'VELOZ');

INSERT INTO JUGADOR (ID_JUGADOR, NUMERO_DOCUMENTO, ID_PIERNA_HABIL, ID_TIPO_POSICION_JUGADOR, APODO) VALUES (3, 1000003044, 2, 1, 'LA ARANA');

INSERT INTO JUGADOR (ID_JUGADOR, NUMERO_DOCUMENTO, ID_PIERNA_HABIL, ID_TIPO_POSICION_JUGADOR, APODO) VALUES (4, 1000004566, 2, 2, 'TRES PIERNAS');

INSERT INTO JUGADOR (ID_JUGADOR, NUMERO_DOCUMENTO, ID_PIERNA_HABIL, ID_TIPO_POSICION_JUGADOR, APODO) VALUES (5, 1000006088, 3, 1, 'MALO');

INSERT INTO TECNICO (ID_TECNICO, NUMERO_DOCUMENTO) VALUES (1, 1000000000);

INSERT INTO TECNICO (ID_TECNICO, NUMERO_DOCUMENTO) VALUES (2, 1000000000);

INSERT INTO TECNICO (ID_TECNICO, NUMERO_DOCUMENTO) VALUES (3, 1000001522);

INSERT INTO TECNICO (ID_TECNICO, NUMERO_DOCUMENTO) VALUES (4, 1000001522);

INSERT INTO TECNICO (ID_TECNICO, NUMERO_DOCUMENTO) VALUES (5, 1000003044);

INSERT INTO EQUIPO (ID_EQUIPO, ID_JUGADOR, ID_TECNICO, NOMBRE_EQUIPO, RUTA_ESCUDO) VALUES (4, 4, 1, 'MILLONARIOS', 'G 1G9V2ENR48BB8JUUL1DE0H3MBKSGSFIL7PPCNF0SSNR1965XRJNIRBQS A5TSOUHCEKWR6GFH8 DLT5727URCOOMWO3BUFGBFE');

INSERT INTO EQUIPO (ID_EQUIPO, ID_JUGADOR, ID_TECNICO, NOMBRE_EQUIPO, RUTA_ESCUDO) VALUES (3, 2, 1, 'SANTA FE', 'PITP5M5GOBBNPGFW O285FWJC5LYRR6F22XTX4YD2CN9K 4RG40XG44YPFA MEA2FBXQGN6O4REHJIR769SIU37WKY4443VJODNP');

INSERT INTO EQUIPO (ID_EQUIPO, ID_JUGADOR, ID_TECNICO, NOMBRE_EQUIPO, RUTA_ESCUDO) VALUES (1, 3, 2, 'NAIONAL', 'HGJVN 99FM0GHVP5CX82C5C3BHRO17PXROMT155VF04FXD4JJXXT0NCE9NFI86453M47MMXXO3VK6EXRM9AG9YTKRF5SIIMTQ90T');

INSERT INTO EQUIPO (ID_EQUIPO, ID_JUGADOR, ID_TECNICO, NOMBRE_EQUIPO, RUTA_ESCUDO) VALUES (2, 2, 2, 'TOLIMA', '3D EFXRDBUCUUC3O3BEDR YG12XMD23JX9GC8F2OWXOSE5NWIHEJIXV6CSNHV54PGC25C4IWSAJGQDGKKSRRFAMR3E 5JRMMOB6C');

INSERT INTO EQUIPO (ID_EQUIPO, ID_JUGADOR, ID_TECNICO, NOMBRE_EQUIPO, RUTA_ESCUDO) VALUES (0, 1, 3, 'AMERICA', '19FINCY8N5L7X0OCUNFY03DR 9 N298MJI30 DY384DFE810BPDBRVQ2Y9VK834L2DKY GK6D0MIV899IY2OP6Q1EEMTPX5AAB5Q');

INSERT INTO PARTIDOS (ID_PARTIDO, ID_TORNEO, ID_EQUIPO, FECHA_PARTIDO, HORA_PARTIDO, ID_EQUIPO_GANADOR, ID_EQUIPO_PERDEDOR) VALUES (2, 3, 2, '840-8-1 4:26:29', '1-1-1 0:0:0', 2, 3);

INSERT INTO PARTIDOS (ID_PARTIDO, ID_TORNEO, ID_EQUIPO, FECHA_PARTIDO, HORA_PARTIDO, ID_EQUIPO_GANADOR, ID_EQUIPO_PERDEDOR) VALUES (3, 3, 3, '1262-2-25 5:55:16', '1735-3-28 8:16:27', 3, 1);

INSERT INTO PARTIDOS (ID_PARTIDO, ID_TORNEO, ID_EQUIPO, FECHA_PARTIDO, HORA_PARTIDO, ID_EQUIPO_GANADOR, ID_EQUIPO_PERDEDOR) VALUES (0, 0, 4, '516-11-22 2:25:28', '419-2-7 1:26:50', 1, 2);

INSERT INTO PARTIDOS (ID_PARTIDO, ID_TORNEO, ID_EQUIPO, FECHA_PARTIDO, HORA_PARTIDO, ID_EQUIPO_GANADOR, ID_EQUIPO_PERDEDOR) VALUES (4, 0, 4, '1847-7-1 7:36:19', '1239-10-6 6:49:42', 2, 3);

INSERT INTO PARTIDOS (ID_PARTIDO, ID_TORNEO, ID_EQUIPO, FECHA_PARTIDO, HORA_PARTIDO, ID_EQUIPO_GANADOR, ID_EQUIPO_PERDEDOR) VALUES (1, 4, 4, '1-1-1 0:0:0', '1009-3-18 3:36:1', 3, 1);

INSERT INTO PASES (ID_REGISTRO_PASES, ID_JUGADOR, ID_PARTIDO, PASES_CORRECTO, PASES_ERRONEOS) VALUES (4, 1, 1, 3, 0);

INSERT INTO PASES (ID_REGISTRO_PASES, ID_JUGADOR, ID_PARTIDO, PASES_CORRECTO, PASES_ERRONEOS) VALUES (3, 2, 4, 0, 3);

INSERT INTO PASES (ID_REGISTRO_PASES, ID_JUGADOR, ID_PARTIDO, PASES_CORRECTO, PASES_ERRONEOS) VALUES (2, 4, 0, 1, 1);

INSERT INTO PASES (ID_REGISTRO_PASES, ID_JUGADOR, ID_PARTIDO, PASES_CORRECTO, PASES_ERRONEOS) VALUES (0, 2, 4, 2, 4);

INSERT INTO PASES (ID_REGISTRO_PASES, ID_JUGADOR, ID_PARTIDO, PASES_CORRECTO, PASES_ERRONEOS) VALUES (1, 3, 0, 4, 2);

INSERT INTO MINUTOS (ID_REGISTRO_MINUTOS, ID_PARTIDO, ID_JUGADOR, CANTIDAD_MINUTOS_JUGADOS) VALUES (2, 2, 1, 3);

INSERT INTO MINUTOS (ID_REGISTRO_MINUTOS, ID_PARTIDO, ID_JUGADOR, CANTIDAD_MINUTOS_JUGADOS) VALUES (1, 3, 2, 0);

INSERT INTO MINUTOS (ID_REGISTRO_MINUTOS, ID_PARTIDO, ID_JUGADOR, CANTIDAD_MINUTOS_JUGADOS) VALUES (3, 0, 3, 2);

INSERT INTO MINUTOS (ID_REGISTRO_MINUTOS, ID_PARTIDO, ID_JUGADOR, CANTIDAD_MINUTOS_JUGADOS) VALUES (4, 4, 4, 4);

INSERT INTO MINUTOS (ID_REGISTRO_MINUTOS, ID_PARTIDO, ID_JUGADOR, CANTIDAD_MINUTOS_JUGADOS) VALUES (0, 1, 5, 1);

INSERT INTO GOLES (ID_REGISTRO_GOLES, ID_PARTIDO, ID_JUGADOR, GOL_MINUTO) VALUES (3, 2, 5, 3);

INSERT INTO GOLES (ID_REGISTRO_GOLES, ID_PARTIDO, ID_JUGADOR, GOL_MINUTO) VALUES (2, 3, 3, 2);

INSERT INTO GOLES (ID_REGISTRO_GOLES, ID_PARTIDO, ID_JUGADOR, GOL_MINUTO) VALUES (4, 0, 3, 0);

INSERT INTO GOLES (ID_REGISTRO_GOLES, ID_PARTIDO, ID_JUGADOR, GOL_MINUTO) VALUES (0, 4, 3, 4);

INSERT INTO GOLES (ID_REGISTRO_GOLES, ID_PARTIDO, ID_JUGADOR, GOL_MINUTO) VALUES (1, 1, 4, 1);

INSERT INTO TARJETAS (ID_REGISTRO_TARJETAS, ID_PARTIDO, ID_JUGADOR, TOTAL__TARJETAS_AMARILLA, TOTAL__TARJETAS_ROJAS) VALUES (3, 2, 2, 1, 1);

INSERT INTO TARJETAS (ID_REGISTRO_TARJETAS, ID_PARTIDO, ID_JUGADOR, TOTAL__TARJETAS_AMARILLA, TOTAL__TARJETAS_ROJAS) VALUES (0, 3, 3, 2, 4);

INSERT INTO TARJETAS (ID_REGISTRO_TARJETAS, ID_PARTIDO, ID_JUGADOR, TOTAL__TARJETAS_AMARILLA, TOTAL__TARJETAS_ROJAS) VALUES (2, 4, 3, 3, 2);

INSERT INTO TARJETAS (ID_REGISTRO_TARJETAS, ID_PARTIDO, ID_JUGADOR, TOTAL__TARJETAS_AMARILLA, TOTAL__TARJETAS_ROJAS) VALUES (4, 0, 2, 4, 3);

INSERT INTO TARJETAS (ID_REGISTRO_TARJETAS, ID_PARTIDO, ID_JUGADOR, TOTAL__TARJETAS_AMARILLA, TOTAL__TARJETAS_ROJAS) VALUES (1, 4, 3, 0, 0);

