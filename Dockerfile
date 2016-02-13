FROM postgres:9.2
COPY initpgdb.sh /
RUN ["chmod", "755", "initpqdb.sh"]
USER postgres
RUN /initpgdb.sh
