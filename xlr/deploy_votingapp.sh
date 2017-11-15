#!/bin/bash

CREDENTIALS=$1
CREDENTIALS+=:
CREDENTIALS+=$2
VOTE_DEPLOY_PATH=$3
RELEASE_TITLE=$4

curl -u $CREDENTIALS -v -H "Content-Type: application/json" $VOTE_DEPLOY_PATH -i -X POST -d '{"releaseTitle": "Deploy Voting App Multi tier", "releaseVariables": {"${user}": "iasalazar"}}' 
