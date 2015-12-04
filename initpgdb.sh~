sleep 10
psql -d template1 -U postgres --command "CREATE DATABASE wildflytest;"
sleep 1
psql -d template1 -U postgres --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';"
sleep 1
psql -d template1 -U postgres --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest TO adminjk8vliu;"
