FROM postgres:9.2
USER postgres
RUN psql --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';" \
    && createdb -O adminjk8vliu wildflytest
