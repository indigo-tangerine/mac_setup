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
    semversioner
    structlog
    boto3
    botocore
    urllib3
    cfn-lint
    
)

for app in "${packages[@]}"; do
    pip install  $app
done