FROM postgres:9.2
RUN pg_createcluster 9.2 main --start &&\ 
 /etc/init.d/postgresql start &\
 sleep 60s &&\
 pg_createcluster -u postgres &&\
 sleep 10 &&\
 psql -d template1 -U postgres --command "CREATE DATABASE wildflytest;" &&\
 psql -d template1 -U postgres --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';" &&\
 psql -d template1 -U postgres --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest TO adminjk8vliu;" &&\
 /etc/init.d/postgresql stop
