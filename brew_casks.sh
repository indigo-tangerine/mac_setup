#!/bin/bash

brew update

# required for powershell
sudo softwareupdate --install-rosetta

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
    postman
    visual-studio-code
    microsoft-remote-desktop
    secure-pipes
    spotify

)

for app in "${apps[@]}"; do
    brew install --cask "$app"
done

utils=(
    bash-completion
    coreutils
    git
    openssl
    jq
    terraform
    tflint
    tfsec
    aws-iam-authenticator
    pipenv
    awscli
    telnet
    yq
    gcc
    shellcheck
)

for util in "${utils[@]}"; do
    brew install "$util"
done

