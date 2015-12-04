FROM postgres:9.2
USER postgres
RUN /etc/init.d/postgresql start
RUN psql --username=postgres --command "CREATE USER adminjk8vliu WITH PASSWORD 'Gw9kVkChXCqp'"
RUN psql --username=postgres --command "CREATE DATABASE wildflytest"
RUN psql --username=postgres --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest to adminjk8vliu"
