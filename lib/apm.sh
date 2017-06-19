#!/usr/bin/env bash

FILENAME=`basename ${BASH_SOURCE[0]} | sed "s/.*\///" | sed "s/\..*//"`

echo "--- Start updating \"$FILENAME\" ---"

apm update --no-confirm
apm clean

echo "--- Finish updating \"$FILENAME\" ---"
echo
