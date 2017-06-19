#!/usr/bin/env bash

FILENAME=`basename ${BASH_SOURCE[0]} | sed "s/.*\///" | sed "s/\..*//"`

echo "--- Start updating \"$FILENAME\" ---"

softwareupdate --install --all

echo "--- Finish updating \"$FILENAME\" ---"
echo
