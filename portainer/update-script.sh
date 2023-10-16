#!/bin/sh
# stop portainer
docker stop portainer

# remove the portainer container so that it can be re pulled
docker rm portainer

# pull the latest portainer
docker pull portainer/portainer-ce:latest

# start portainer again
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

