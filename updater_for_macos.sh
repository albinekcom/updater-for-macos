#!/usr/bin/env bash

LIB_DIRECTORY_PATH="$(dirname $0)/lib"

for arg in "$@"; do
  FILE_NAME=${arg#"--"}
  FILE_PATH=$LIB_DIRECTORY_PATH/$FILE_NAME.sh

  if [ -f "$FILE_PATH" ]
  then
    echo "--- Start updating \"$FILE_NAME\" ---"
    source $FILE_PATH
    echo "--- Finish updating \"$FILE_NAME\" ---"
    echo
  fi

done
