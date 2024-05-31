#!/bin/bash

if [[ $GIT_BRANCH == "origin/development" ]]; then
        docker tag my-react jaikrishnam/development
        docker push jaikrishnam/development
        echo "success"
        
else
        echo "failed"
fi

