docker run --name oracle -p 1521:1521 -e ORACLE_PASSWORD=oracle -e APP_USER=banco -e APP_USER_PASSWORD=oracle -e ORACLE_DATABASE=ORCL -v ~/Ucc/Ucc_database_design/Scripts/Banco:/container-entrypoint-initdb.d -d gvenzl/oracle-xe

