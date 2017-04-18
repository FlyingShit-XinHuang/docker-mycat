FROM openjdk:8-jre

ARG mycat_src=Mycat-server-1.6.5-BETA-20170418153238-linux.tar.gz
ADD ./$mycat_src /usr/local/

RUN echo "build with $mycat_src" && \
  chmod +x /usr/local/mycat/bin/*

VOLUME ["/usr/local/mycat/conf"]

EXPOSE 8066 9066

ENTRYPOINT ["/usr/local/mycat/bin/mycat", "console"]
