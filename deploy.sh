#!/bin/bash

if [[ $GIT_BRANCH == "origin/development" ]]; then
        docker tag my-react jaikrishnam/development
        docker push jaikrishnam/development
        
if [[ $GIT_BRANCH == "origin/prod" ]]; then
        docker tag my-react jaikrishnam/production
        docker push jaikrishnam/main
else
        echo "failed"
fi
