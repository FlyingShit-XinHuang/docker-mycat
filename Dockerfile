FROM openjdk:8-jre

ARG mycat_src="http://dl.mycat.io/1.6-RELEASE/Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz"
ADD $mycat_src /tmp/mycat-server.tar.gz

RUN tar zxvf /tmp/mycat-server.tar.gz -C /usr/local && \
  chmod +x /usr/local/mycat/bin/* && \
  rm -f /tmp/mycat-server.tar.gz 

VOLUME ["/usr/local/mycat/conf"]

EXPOSE 8066 9066

ENTRYPOINT ["/usr/local/mycat/bin/mycat", "console"]