#!/usr/bin/env bash
# Assumes you have already used homebrew to install zsh

# Switch shell to zsh
# chsh -s /usr/local/bin/zsh

# Install oh-my-zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Powerline
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

# Install extensions
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zsh-completions

echo "Moving zsh config files to user root"
# Get and use pre-configured .zshrc file
sudo yes | cp -rf .zshrc ~/.zshrc

# Copy our aliases file to user root
# sudo yes | cp -rf .zsh_aliases ~/.zsh_aliases

# reload .zshrc
source ~/.zshrc

