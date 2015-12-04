FROM postgres:9.2
USER postgres
RUN /etc/init.d/postgresql start && \
    psql -d template1 -U postgres --command "CREATE DATABASE wildflytest;" && \
    psql -d template1 -U postgres --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';" &&\
    psql -d template1 -U postgres --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest TO adminjk8vliu;"

