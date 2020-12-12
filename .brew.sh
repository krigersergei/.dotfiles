#!/usr/bin/env bash

brew install yarn
brew install tree

brew install --cask hyper
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask firefox
brew install --cask postman
brew install --cask adobe-acrobat-reader
brew install --cask spectacle
brew install --cask figma

# brew install ssh-copy-id
# brew install --cask flash-player
# brew install --cask mongodb
# brew install --cask skype
# brew install --cask robo-3t
# brew install --cask slack
# brew install --cask whatsapp
# brew install --cask miro
# brew install --cask drawio
# brew install --cask toggl
# brew install postgresql

# Remove outdated versions from the cellar.
brew cleanup
