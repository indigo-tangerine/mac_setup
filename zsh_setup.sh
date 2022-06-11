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

# Configure zshrc and zshenv

echo "touch ~/.hushlogin" >> ~/.zshrc
HOME_DIR=$(echo ~)
echo "export ZSH=\"$HOME_DIR/.oh-my-zsh\"" >> ~/.zshrc

echo "plugins=(git aws docker github)" >> ~/.zshrc
echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc

echo "export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters" >> ~/.zshenv
echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"  >> ~/.zshrc
echo "source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

echo "if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi"  >> ~/.zshrc

echo 'POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(aws)
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="135"
POWERLEVEL9K_AWS_FOREGROUND="black"
POWERLEVEL9K_AWS_BACKGROUND="166" # darkorange3a' >> ~/.zshrc

echo "alias ls='ls -G'
alias tfm='terraform'
alias powershell='pwsh'
alias pip='pip3'
alias python='python3'
" >> ~/.zshrc

echo 'export PATH="/usr/local/opt/mysql-client/bin:$PATH' >> ~/.zshrc
exho 'export PATH="$HOME/bin:/usr/local/bin:$PATH"' >> ~/.zshrc

# reload .zshrc
source ~/.zshrc

