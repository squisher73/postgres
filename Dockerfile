FROM postgres
USER postgres
RUN /etc/init.d/postgresql start
COPY initpgdb.sh /
ENTRYPOINT ["/initpgdb.sh"]

