FROM postgres:9.2
RUN sleep 5s
USER postgres
RUN sleep 5s
RUN /etc/init.d/postgresql start
RUN sleep 10s
RUN psql -d template1 -U postgres --command "CREATE DATABASE wildflytest;"
RUN psql -d template1 -U postgres --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';"
RUN psql -d template1 -U postgres --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest TO adminjk8vliu;"

