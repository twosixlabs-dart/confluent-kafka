FROM confluentinc/cp-kafka:5.3.1

RUN apt-get update && \
    apt install -y --force-yes bc

COPY bin/ /usr/bin/
RUN chmod +x /usr/bin/*

ENTRYPOINT ["/usr/bin/start.sh"]