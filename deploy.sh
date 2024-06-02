#!/bin/bash

if [[ $GIT_BRANCH == "origin/development" ]]; then
        docker tag my-react jaikrishnam/development
        docker push jaikrishnam/development
        echo "success"
if [[ $GIT_BRANCH == "origin/main" ]]; then
        docker tag my-react jaikrishnam/production
        docker push jaikrishnam/main
else
        echo "failed"
fi

