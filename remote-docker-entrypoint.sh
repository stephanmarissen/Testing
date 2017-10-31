#!/bin/bash
mysql -uroot -ppassword -e "USE agfirstdb1;"
mysql -uroot -ppassword agfirstdb1 < sqlfiles/table.sql
echo "table import complete"
exit 0
