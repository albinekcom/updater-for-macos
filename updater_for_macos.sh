#!/usr/bin/env bash


SCRIPT_DIRECTORY_PATH=$(dirname `which $0`)

LOGS_FILE_NAME="logs.txt"
LOGS_FILE_PATH=$SCRIPT_DIRECTORY_PATH/$LOGS_FILE_NAME


START_DATE=$(date '%H:%M:%S | +%d.%m.%Y')
echo "--- Updater for macOS started at: $START_DATE ---" > $LOGS_FILE_PATH


echo "- Updating \"macOS\" -" >> $LOGS_FILE_PATH
softwareupdate --install --all >> $LOGS_FILE_PATH


echo "- Updating \"brew\" -" >> $LOGS_FILE_PATH
brew update >> $LOGS_FILE_PATH
brew cleanup >> $LOGS_FILE_PATH
brew cask update >> $LOGS_FILE_PATH
brew cask cleanup >> $LOGS_FILE_PATH


echo "- Updating \"gem\" -" >> $LOGS_FILE_PATH
gem update --system >> $LOGS_FILE_PATH
gem update >> $LOGS_FILE_PATH
gem cleanup >> $LOGS_FILE_PATH


echo "- Updating \"apm\" -" >> $LOGS_FILE_PATH
apm update --no-confirm >> $LOGS_FILE_PATH
apm clean >> $LOGS_FILE_PATH


echo "- Updating \"pod\" -" >> $LOGS_FILE_PATH
pod setup >> $LOGS_FILE_PATH


END_DATE=$(date '%H:%M:%S | +%d.%m.%Y')
echo "--- Updater for macOS finished at: $END_DATE ---" >> $LOGS_FILE_PATH
