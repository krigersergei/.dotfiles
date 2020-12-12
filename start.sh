#!/usr/bin/env bash

# Install apps via brew.
source .brew.sh

# Update macOS settings.
source .osx.sh

# Setup VSCode.
source .vscode.sh

# Add exports
source .exports.sh

# Set global gitignore
ln -s ~/.dotfiles/.gitignore ~

# Install node.
nvm install node
