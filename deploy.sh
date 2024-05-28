#!/bin/bash

if [[ $GIT_BRANCH == "origin/dev" ]]; then
        docker tag my-react jaikrishnam/development
        docker push jaikrishnam/development
        
else
        echo "failed"
fi

