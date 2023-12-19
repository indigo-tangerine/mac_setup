#!/bin/bash

brew update

# required for powershell
sudo softwareupdate --install-rosetta

apps=(
    firefox
    google-chrome
    gitkraken
    java
    powershell
    aerial
    iterm2
    kubernetes-cli
    slack
    postman
    visual-studio-code
    microsoft-remote-desktop
    secure-pipes
    spotify
    atom
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
    pre-commit
    docker
)

for util in "${utils[@]}"; do
    brew install "$util"
done

# Compose is now a Docker plugin. For Docker to find this plugin, symlink it
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
