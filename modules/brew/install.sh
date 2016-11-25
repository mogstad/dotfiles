#!/bin/sh

if test ! $(which brew)
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else 
  brew update
fi
