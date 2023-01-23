FROM mysql:8

ADD ./db.sql /docker-entrypoint-initdb.d

EXPOSE 3306