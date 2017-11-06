FROM oraclelinux:7-slim

ARG PACKAGE_URL=https://repo.mysql.com/yum/mysql-5.7-community/docker/x86_64/mysql-community-server-minimal-5.7.19-1.el7.x86_64.rpm
ARG PACKAGE_URL_SHELL=https://repo.mysql.com/yum/mysql-tools-community/el/7/x86_64/mysql-shell-1.0.10-1.el7.x86_64.rpm

COPY docker-entrypoint.sh /entrypoint.sh

ENV MYSQL_ROOT_PASSWORD=password

RUN rpmkeys --import https://repo.mysql.com/RPM-GPG-KEY-mysql \
  && yum install -y $PACKAGE_URL $PACKAGE_URL_SHELL libpwquality \
  && yum clean all \
  && chmod 755 /entrypoint.sh

VOLUME /sqlfiles

EXPOSE 3306 33060
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
