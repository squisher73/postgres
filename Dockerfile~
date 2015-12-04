FROM postgres:9.2
USER postgres
RUN /etc/init.d/postgresql start
COPY initpgdb.sh /
ENTRYPOINT ["/initpgdb.sh"]

