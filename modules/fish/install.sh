#!/bin/sh

if test ! $(which fish); then
  echo "Installing Fish"
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
fi
