#!/bin/bash

docker-compose up -d
# Get the latest commit hash of main branch
main_latest_commit=$(git rev-parse origin/main)

# Get the common ancestor of development and main branches
common_ancestor=$(git merge-base origin/development origin/main)

if [[ $GIT_BRANCH == "origin/development" ]]; then
        docker tag my-react jaikrishnam/development
        docker push jaikrishnam/development
        
elif [[ $common_ancestor == $main_latest_commit ]]; then
        docker tag my-react jaikrishnam/prod
        docker push jaikrishnam/prod
        
else
        echo "failed"
fi
