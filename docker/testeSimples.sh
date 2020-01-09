#!/bin/bash
sleep 20m
cat /var/log/mysqld.log 
cd /home/superBits/devTools/DBDiff/
./dbdiff --config=config.conf --template=templates/simple-db-migrate.tmpl --include=all server1.BANCO_REFERENCIA:server2.BANCO_NOVO_BANCO --output=./resultado.sql
