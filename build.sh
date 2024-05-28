#!/bin/bash

echo "Inside the build file executing the commands"
image_name="my-react"
image_tag="latest"
check_val=0

docker login -u jaikrishnam -p zendevops#123

docker build -t $image_name:$image_tag .

#if [ $? -eq 0 ]; then
#    echo "Docker image build successful: $IMAGE_NAME:$IMAGE_TAG"
#else
#    echo "Docker image build failed"
#    exit 1
#fi

