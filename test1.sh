mysql -uroot -ppassword -e "CREATE DATABASE agfirstdb1;"
mysql -uroot -ppassword -e "USE agfirstdb1;"
mysql -uroot -ppassword agfirstdb1 < /home/$USER/sqlfiles/writers.sql
