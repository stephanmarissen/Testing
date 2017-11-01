#!/bin/bash
if [ "${1:0:1}" = '-' ]; then
	set mysqld "$@"
fi
mysql -uroot -ppassword -e "CREATE DATABASE agfirstdb1;"
mysql -uroot -ppassword -e "USE agfirstdb1;"
mysql -uroot -ppassword agfirstdb1 < sqlfiles/writers.sql
exec "$@"
