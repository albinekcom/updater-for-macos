#!/usr/bin/env bash

LIB_DIRECTORY="$(dirname $0)/lib"

for arg in "$@"; do
  FILENAME=${arg#"--"}
  FILE_PATH=$LIB_DIRECTORY/$FILENAME.sh

  if [ -f "$FILE_PATH" ]
  then
    echo "--- Start updating \"$FILENAME\" ---"
    source $FILE_PATH
    echo "--- Finish updating \"$FILENAME\" ---"
    echo
  fi

done
