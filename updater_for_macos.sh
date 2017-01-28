#!/usr/bin/env bash


START_DATE=$(date '%H:%M:%S | +%d.%m.%Y')
echo "--- Updater for macOS started at: $START_DATE ---"

echo "- Updating \"macOS\" -"
softwareupdate --install --all

echo "- Updating \"brew\" -"
brew update
brew cleanup
brew cask update
brew cask cleanup

echo "- Updating \"gem\" -"
gem update --system
gem update
gem cleanup

echo "- Updating \"apm\" -"
apm update --no-confirm
apm clean

END_DATE=$(date '%H:%M:%S | +%d.%m.%Y')
echo "--- Updater for macOS finished at: $END_DATE ---"
