# Pseudo-distributed HBase Docker Image
Docker image for [pseudo-distributed HBase](http://hbase.apache.org/book.html#quickstart_pseudo) setup.

### For Mac User:
Use the [Docker's official toolbox for Mac OS X](https://docs.docker.com/mac/).

1. `$ docker-machine create --driver virtualbox myvbox`
1. `$ eval "$(docker-machine env myvbox)"`
1. `$ docker-machine ssh myvbox -nNTL 2181:localhost:2181 16010:localhost:16010 &`

### Building the image
1. `$ docker build -t hbase-docker .`

### Running the container
1. `$ docker run -h hbase-container --name hbase-container -d -p 2181:2181 -p 16010:16010 -p 16020:16020 -p 16030:16030 -p 16201:16201 hbase-docker`
1. On your host(not inside of docker), change /etc/hosts, add line:  
  `<docker-ip> hbase-container`  
  You can find docker ip by running `docker-machine ip myvbox`
1. If you want to ssh into a running container,
  `$ docker exec -it hbase-container /bin/bash`
