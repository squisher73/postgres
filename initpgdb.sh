#!/bin/bash

function wait_for_database() {
  until psql --help &> /dev/null; do
    sleep 1
  done
}

echo "=> Starting DBMS"
/etc/init.d/postgresql start > /dev/null &

echo "=> Waiting for DBMS"
wait_for_server

echo "=> Executing the commands"
psql -d template1 -U postgres --command "CREATE DATABASE wildflytest;"
psql -d template1 -U postgres --command "CREATE USER adminjk8vliu WITH SUPERUSER PASSWORD 'Gw9kVkChXCqp';"
psql -d template1 -U postgres --command "GRANT ALL PRIVILEGES ON DATABASE wildflytest TO adminjk8vliu;"
