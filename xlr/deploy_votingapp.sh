#!/bin/bash

XLR_CREDENTIALS=$1
XLR_CREDENTIALS+=:
XLR_CREDENTIALS+=$2
XLR_VOTE_DEPLOY_PATH=$3
XLR_RELEASE_TITLE=$4

curl -u $XLR_CREDENTIALS -v -H "Content-Type: application/json" $XLR_VOTE_DEPLOY_PATH -i -X POST -d '{"releaseTitle": "Deploy Voting App Multi tier", "releaseVariables": {"${user}": "iasalazar"}}' 
