#!/bin/bash

chmod +x ./*.sh

# install brew & pre-reqs

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install python3 pip3
source ./python.sh

# install brew apps
source ./brew_casks.sh

# install vs code extensions
source ./vscodeextensions.sh

#install fonts
source ./fonts.sh

# configure mac os
source ./macos.sh

# configure zsh
source ./zsh_setup.sh

mkdir -p ~/.aws
mkdir -p ~/.ssh