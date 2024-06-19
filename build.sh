#!/bin/bash

echo "Inside the build file executing the commands"
image_name="my-react"
image_tag="latest"

docker login -u jaikrishnam -p zendevops#123
docker build -t $image_name:$image_tag .


