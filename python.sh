#!/usr/bin/env bash

echo "Installing python packages"

brew install python3

python3 -m pip3 install --upgrade setuptools
python3 -m pip3 install --upgrade pip

packages=(
    virtualenv
    pylint
    'cfn-lint'
    autopep8
)

for app in "${apps[@]}"; do
    pip3 install  $app
done