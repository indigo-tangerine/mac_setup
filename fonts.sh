#!/usr/bin/env bash
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew install svn
FONTS=(
    font-roboto
    font-clear-sans
    font-source-code-pro-for-powerline
    font-meslo-for-powerline
    font-hack
    font-awesome-terminal-fonts
    font-hack-nerd-font
)
brew install --cask ${FONTS[@]}