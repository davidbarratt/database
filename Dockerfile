FROM mariadb

RUN { \
  echo '[mysqld]'; \
  echo 'max_allowed_packet=33554432'; \
  echo 'sql_mode=STRICT_ALL_TABLES'; \
  echo 'local_infile=0'; \
} > /etc/mysql/conf.d/phabricator.cnf
