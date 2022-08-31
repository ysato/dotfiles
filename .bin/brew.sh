#!/usr/bin/env bash

if ! (type brew > /dev/null 2>&1); then
  echo "brew not installed!"
  exit 1
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GnuPG to enable PGP-signing commits.
brew install gnupg
brew install pinentry-mac

# Install AWS command-line interface
brew install awscli

brew install mas
brew install nodenv

# Install nerd fonts
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

# Install starship
brew install starship

# Install jq
brew install jq

brew install --cask 1password
brew install --cask clipy
brew install --cask docker
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask slack
brew install --cask the-unarchiver

# Install CotEditor
mas install 1024640650

# Install Kindle
mas install 405399194

# Install Magnet
mas install 441258766

# Install TaskTab
mas install 1395414535

# Remove outdated versions from the cellar.
brew cleanup
