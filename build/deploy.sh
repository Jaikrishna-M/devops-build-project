#!/bin/bash

image_name="my-react"
image_tag="latest"
check_val=0
container_name="my-new-react"
port="8080:80"

#docker run -d -p 8080:80 my-react

docker stop $container_name > /dev/null 2>&1
docker rm $container_name > /dev/null 2>&1

docker run -d --name $container_name -p $port $image_name:$image_tag

if [ $? -eq 0 ]; then
    echo "Docker container deployed successfully: $CONTAINER_NAME"
else
    echo "Failed to deploy Docker container: $CONTAINER_NAME"
    exit 1
fi


#if [ $? -eq 0 ]; then
#    echo "Docker image build successful: $IMAGE_NAME:$IMAGE_TAG"
#else
#
#    echo "Docker image build failed"
#    exit 1
#fi
