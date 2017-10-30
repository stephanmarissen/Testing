#!/bin/bash
mysql -uroot -ppassword "USE agfirstdb1;"
mysql -uroot -ppassword "DELETE FROM writers.sql WHERE id BETWEEN '1' AND '5000';"
