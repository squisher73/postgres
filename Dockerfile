FROM postgres:9.2
COPY initpgdb.sh /
ENTRYPOINT ["/initpgdb.sh"]
