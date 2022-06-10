#!/bin/bash

# CDK

npm install -g  \
    typescript \
    aws-cdk-lib \
    aws-cdk
npm install --save-dev jest

code --install-extension AmazonWebServices.aws-toolkit-vscode

# Cloudformation
brew install \
    cfn-lint \
    cloudformation-guard \
    yq \ 
    kubectl \
    dotnet \
    oracle-jdk \
    yamllint


brew link --overwrite yq
brew link --overwrite cfn-lint

pip3 install --upgrade "cookiecutter==1.7.2"