FROM ubuntu
MAINTAINER Xiaoyao Qian <jivepaulrock@gmail.com>

ENV ZK_VERSION 3.4.8
ENV HADOOP_VERSION 2.7.2
ENV HBASE_VERSION 1.1.4

COPY *.sh /build/

RUN /build/setup-env.sh && \
  # /build/setup-zookeeper.sh && \
  /build/setup-hadoop.sh && \
  /build/setup-hbase.sh

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

ADD ./core-site.xml /opt/hadoop/etc/hadoop/core-site.xml
ADD ./hdfs-site.xml /opt/hadoop/etc/hadoop/hdfs-site.xml
ADD ./hbase-site.xml /opt/hbase/conf/hbase-site.xml
ADD ./run /opt/run

EXPOSE 2181
EXPOSE 16010
EXPOSE 16020
EXPOSE 16030

CMD ["/opt/run"]
