#!/usr/bin/env bash

# Ask for the administrator password upfront
# sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Show battaty percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Hide Siri
defaults write com.apple.siri "StatusMenuVisible" -bool false
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" -bool false

###############################################################################
# Trackpad                                                                    #
###############################################################################

# Enable Tap click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Enable 3-finger drag.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

###############################################################################
# Finder                                                                      #
###############################################################################

# Display the file extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# Display hidden files
defaults write com.apple.finder AppleShowAllFiles -boolean true

###############################################################################
# Dock                                                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Keep Dock on the left
defaults write com.apple.Dock orientation -string "left"

# Enable App Exposé
defaults write com.apple.dock showAppExposeGestureEnabled -bool true

###############################################################################
# Screen                                                                      #
###############################################################################

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

###############################################################################
# VoiceOver                                                                   #
###############################################################################

# Don't show VoiceOver training dialog
defaults write com.apple.VoiceOverTraining doNotShowSplashScreen -boolean true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Dock" "SystemUIServer" "Finder" "cfprefsd"; do
  killall "${app}" &> /dev/null
done
