#/!bin/bash

brew update

apps=(
    docker 
    firefox
    google-chrome
    gitkraken
    java
    powershell
    aerial
    iterm2
    kubernetes-cli
    slack
    rancher
)

for app in "${apps[@]}"; do
    brew install --cask $app
done

utils=(
    bash-completion
    coreutils
    git
    openssl
    python3
    jq
    terraform
    tflint
    tfsec
    aws-iam-authenticator
    pipenv
    awscli
)

for util in "${utils[@]}"; do
    brew install $util
done

