FROM postgres:9.2
USER postgres
RUN psql --command "CREATE USER adminjk8vliu WITH PASSWORD 'Gw9kVkChXCqp';"
RUN psql --command "CREATE DATABASE wildflytest;"
RUN psql --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest to adminjk8vliu;"
