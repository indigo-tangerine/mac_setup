#!/bin/bash

# CDK
brew install npm

npm install -g  \
    typescript \
    aws-cdk-lib \
    aws-cdk
npm install --save-dev jest

code --install-extension AmazonWebServices.aws-toolkit-vscode

# Cloudformation
brew install cloudformation-guard \
    yq \ 
    kubectl \
    dotnet \
    oracle-jdk \
    yamllint \
    chef-workstation \
    saml2aws


brew link --overwrite yq

echo 'export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"' >> ~/.zshrc

pip3 install --upgrade "cookiecutter==1.7.2"
pip3 install 'cfn-lint'