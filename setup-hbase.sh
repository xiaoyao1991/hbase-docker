#!/bin/bash

cd /opt
wget http://www-eu.apache.org/dist/hbase/$HBASE_VERSION/hbase-$HBASE_VERSION-bin.tar.gz
tar xvfz hbase-$HBASE_VERSION-bin.tar.gz
mv hbase-$HBASE_VERSION hbase
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> hbase/conf/hbase-env.sh
