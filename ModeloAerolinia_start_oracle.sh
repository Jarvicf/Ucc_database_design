docker run --name oracleAerolinia \
		-p 1521:1521 \
		-e ORACLE_PASSWORD=oracle \
		-e APP_USER=aerolinia \
		-e APP_USER_PASSWORD=oracle \
		-d gvenzl/oracle-xe