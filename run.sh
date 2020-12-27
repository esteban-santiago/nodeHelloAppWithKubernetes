#!/usr/bin/bash
sudo docker network rm hello-net > /dev/null 2>&1
sudo docker network create --driver bridge hello-net && \
sudo docker run --rm -d -p 3000:3000 --name node-hello --network hello-net node-hello && \
sudo docker run --rm -d -p 8080:8080 --name nginx-hello --network hello-net nginx-hello