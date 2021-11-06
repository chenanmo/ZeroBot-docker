##zbp机器人docker化

FROM golang:1.17.2

COPY ./initialization.sh /usr/bin/
COPY ./go-cqhttp /usr/bin/cqhttp
RUN chmod a+x /usr/bin/initialization.sh && \
    chmod a+x /usr/bin/cqhttp
    
ENTRYPOINT ["/usr/bin/initialization.sh"]
WORKDIR /data
