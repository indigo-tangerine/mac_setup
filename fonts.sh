#!/usr/bin/env bash
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew install svn

sudo mkdir -p /Library/Java/Extensions
sudo ln -s /opt/homebrew/lib/libsvnjavahl-1.dylib /Library/Java/Extensions/libsvnjavahl-1.dylib

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