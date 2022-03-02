#!/usr/bin/env bash

echo "Installing python packages"

brew install python3

python3 -m pip3 install --upgrade setuptools
python3 -m pip3 install --upgrade pip

pip3 install virtualenv
pip3 install pylint
pip3 install cfn-lint
# # pip3 install awscli
# pip3 install aws-shell
# pip3 install aws-sam-cli
# pip3 install aws-xray-sdk