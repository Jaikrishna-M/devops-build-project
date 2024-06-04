#!/bin/bash

if [[ $GIT_BRANCH == "origin/development" ]]; then
        docker tag my-react jaikrishnam/development
        docker push jaikrishnam/development
        
if [[ $GIT_BRANCH == "origin/prod" ]]; then
        docker tag my-react jaikrishnam/prod
        docker push jaikrishnam/prod
        
else
        echo "failed"
fi
