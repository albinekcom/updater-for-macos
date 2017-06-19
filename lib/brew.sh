#!/usr/bin/env bash

FILENAME=`basename ${BASH_SOURCE[0]} | sed "s/.*\///" | sed "s/\..*//"`

echo "--- Start updating \"$FILENAME\" ---"

brew update
brew upgrade
brew cleanup
brew cask cleanup

echo "--- Finish updating \"$FILENAME\" ---"
echo
