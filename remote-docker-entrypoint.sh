#!/bin/bash
service mysql start
mysql -uroot -ppassword -e "USE agfirstdb1;"
mysql -uroot -ppassword agfirstdb1 < sqlfiles/table.sql
