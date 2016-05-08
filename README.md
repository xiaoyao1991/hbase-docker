# Pseudo-distributed HBase Docker Image
Docker image for [pseudo-distributed HBase](http://hbase.apache.org/book.html#quickstart_pseudo) setup.

### For Mac User:
Use the [Docker's official toolbox for Mac OS X](https://docs.docker.com/mac/).

1. `$ docker-machine create --driver virtualbox myvbox`
1. `$ eval "$(docker-machine env myvbox)"`
1. `$ docker-machine ssh myvbox -vnNTL 2181:localhost:2181 16010:localhost:16010 &`

### Building the image
1. `$ docker build -t hbase-docker .`

### Running the container
1. `$ docker run -d -p 2181:2181 -p 16010:16010 -p 16020:16020 -p 16030:16030 hbase-docker`
1. Change `/etc/hosts`, add the host ip and the docker container hostname pair to it. With docker-machine, you can get the host ip by running `docker-machine ip myvbox`. You can get the docker container hostname by running `docker ps`.
