#!/usr/bin/env bash

FILENAME=`basename ${BASH_SOURCE[0]} | sed "s/.*\///" | sed "s/\..*//"`

echo "--- Start updating \"$FILENAME\" ---"

gem update --system
gem update
gem cleanup

echo "--- Finish updating \"$FILENAME\" ---"
echo
