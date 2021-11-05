##zbp机器人docker化

FROM golang:1.17.2

COPY ./initialization.sh /usr/bin/

RUN chmod a+x /usr/bin/initialization.sh
    
ENTRYPOINT ["/usr/bin/initialization.sh"]
WORKDIR /zbp
