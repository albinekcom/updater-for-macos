#!/usr/bin/env bash

LIB_DIRECTORY="$(dirname $0)/lib"

for arg in "$@"; do
  FILENAME=${arg#"--"}.sh
  FILE_PATH=$LIB_DIRECTORY/$FILENAME

  if [ -f "$FILE_PATH" ]
  then
    source $FILE_PATH
  fi

done
