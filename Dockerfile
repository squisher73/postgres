FROM postgres:9.2
USER postgres
COPY initpgdb.sh ~/
RUN ~/initpgdb.sh
