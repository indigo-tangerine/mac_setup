#!/bin/bash

# CDK

npm install -g typescript
npm install aws-cdk-lib
npm install -g aws-cdk
npm install --save-dev jest

code --install-extension AmazonWebServices.aws-toolkit-vscode

# Cloudformation
brew install \
    cfn-lint \
    cloudformation-guard \
    yq \ 
    kubectl \
    dotnet


brew link cfn-lint
