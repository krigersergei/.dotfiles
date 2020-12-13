#!/usr/bin/env bash

# Installing extensions.
code --install-extension eamodio.gitlens
code --install-extension dbankier.vscode-quick-select
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint
code --install-extension EditorConfig.EditorConfig
code --install-extension gruntfuggly.todo-tree
code --install-extension adpyke.codesnap

# Adding VSCode settings.
if [[ -f ~/Library/Application\ Support/Code/User/settings.json ]]; then
    rm ~/Library/Application\ Support/Code/User/settings.json
fi

ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/

# Adding custom snippets.
if [[ -f ~/Library/Application\ Support/Code/User/snippets/my.code-snippets ]]; then
    rm ~/Library/Application\ Support/Code/User/snippets/my.code-snippets
fi

ln -s ~/.dotfiles/vscode/snippets/my.code-snippets ~/Library/Application\ Support/Code/User/snippets/

