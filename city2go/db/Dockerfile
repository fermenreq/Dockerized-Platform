FROM postgres:9.5
MAINTAINER  Fernando Mendez Requena <fernando.mendez.external@atos.net>

WORKDIR /docker-entrypoint-initdb.d/
ADD init-db.sql /docker-entrypoint-initdb.d
EXPOSE 5432
