FROM postgres:9.2
USER postgres
RUN /etc/init.d/postgresql start && \
    psql --command "CREATE DATABASE wildflytest;" && \
    psql --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';" &&\
    psql --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest TO adminjk8vliu;"

