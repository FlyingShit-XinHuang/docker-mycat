FROM openjdk:8-jre

ADD ./Mycat-server-1.6-RELEASE.tar.gz /usr/local/

RUN chmod +x /usr/local/mycat/bin/*

VOLUME ["/usr/local/mycat/conf"]

EXPOSE 8066 9066

ENTRYPOINT ["/usr/local/mycat/bin/mycat", "console"]