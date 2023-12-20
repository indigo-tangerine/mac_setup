#!/bin/bash

chmod +x ./*.sh

mkdir -p ~/.aws
mkdir -p ~/.ssh

# install brew & pre-reqs

sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

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

