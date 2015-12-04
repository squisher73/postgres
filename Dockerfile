FROM postgres:9.2
COPY initpgdb.sh /
USER postgres
RUN /initpgdb.sh
