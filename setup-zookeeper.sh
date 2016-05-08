#!/bin/bash

cd /opt
wget http://www-eu.apache.org/dist/zookeeper/zookeeper-$ZK_VERSION/zookeeper-$ZK_VERSION.tar.gz
tar xvfz zookeeper-$ZK_VERSION.tar.gz
mv zookeeper-$ZK_VERSION zookeeper
cp zookeeper/conf/zoo_sample.cfg zookeeper/conf/zoo.cfg
