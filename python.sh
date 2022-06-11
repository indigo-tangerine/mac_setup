#!/usr/bin/env bash

echo "Installing python packages"

brew install python3

python3 -m pip install --upgrade setuptools
python3 -m pip install --upgrade pip


packages=(
    virtualenv
    pylint
    'cfn-lint'
    autopep8
)

for app in "${packages[@]}"; do
    pip install  $app
done