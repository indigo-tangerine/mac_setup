#!/usr/bin/env bash

echo "Installing extensions for language support"

# Markdown linting
code --install-extension davidanson.vscode-markdownlint

# TOML files
code --install-extension bungcip.better-toml

echo "Installing snippets"
# XML Tools
code --install-extension dotjoshjohnson.xml
code --install-extension ms-vscode.powershell

# YAML support
code --install-extension redhat.vscode-yaml
# code --install-extension oderwat.indent-rainbow
code --install-extension sirtori.indenticator

# MSSQL
code --install-extension ms-mssql.mssq

# Kubernetes & Docker
code --install-extension ms-azuretools.vscode-docker
code --install-extension dunstontc.vscode-docker-syntax
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension peterjausovec.vscode-docker

# CloudFormation
code --install-extension champgm.cloudformation-yaml-validator
code --install-extension kddejong.vscode-cfn-lint
code --install-extension pradiphudekar.cf-templates
code --install-extension dsteenman.cloudformation-yaml-snippets

# Python
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension pylint

# Terraform
code --install-extension hashicorp.terraform
code --install-extension betajob.modulestf
code --install-extension erd0s.terraform-autocomplete
code --install-extension sahmed.terraform-comments-beautifier
code --install-extension run-at-scale.terraform-doc-snippets

# JSON
code --install-extension mohsen1.prettify-json

# Language Prettifier
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint
code --install-extension rvest.vs-code-prettier-eslint

# Git
code --install-extension eamodio.gitlens
code --install-extension github.copilot
code --install-extension gitlab.gitlab-workflow

echo "Finished installing VS Code extensions."

