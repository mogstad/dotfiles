#!/bin/sh

if test ! $(which fish); then
  echo "Installing Fish"
  brew install fish
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
else
  brew outdated fish || brew upgrade fish
fi
