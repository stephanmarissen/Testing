#!/bin/bash
mysqld mysql -uroot -ppassword -e "CREATE DATABASE agfirstdb1;"
mysqld mysql -uroot -ppassword -e "USE agfirstdb1;"
mysqld mysql -uroot -ppassword agfirstdb1 < sqlfiles/writers.sql
