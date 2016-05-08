#!/bin/bash

cd /opt
wget http://www-us.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz
tar xvfz hadoop-$HADOOP_VERSION.tar.gz
mv hadoop-$HADOOP_VERSION hadoop
sed -i 's/JAVA_HOME=\${JAVA_HOME}/JAVA_HOME=\/usr\/lib\/jvm\/java-8-oracle/g' hadoop/etc/hadoop/hadoop-env.sh
