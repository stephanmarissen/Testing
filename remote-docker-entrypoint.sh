#!/bin/bash
mysql -uroot -ppassword -e "CREATE DATABASE agfirstdb1;"
mysql -uroot -ppassword -e "USE agfirstdb1;"
mysql -uroot -ppassword agfirstdb1 < sqlfiles/writers.sql
echo "table import complete"
exit 0
