#!/usr/bin/bash
sudo docker build -t estebansantiago/node-hello -f .docker/Dockerfile_node . && sudo docker build -t estebansantiago/nginx-hello -f .docker/Dockerfile_nginx . && \
sudo docker push estebansantiago/node-hello && sudo docker push estebansantiago/nginx-hello
