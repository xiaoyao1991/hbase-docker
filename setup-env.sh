#!/bin/bash

# Install Oracle Java
apt-get update -y
apt-get install software-properties-common -y
apt-add-repository ppa:webupd8team/java -y
apt-get update -y
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
apt-get install oracle-java8-installer -y

# SSH
apt-get install ssh -y
ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && chmod 0600 ~/.ssh/authorized_keys
service ssh restart

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
cat > /etc/profile.d/defaults.sh <<EOF
JAVA_HOME=$JAVA_HOME
export JAVA_HOME
EOF
