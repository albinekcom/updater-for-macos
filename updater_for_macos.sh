#!/usr/bin/env bash

LIB_DIRECTORY="$(dirname $0)/lib"

for arg in "$@"; do
  shift
  case "$arg" in
    "--macos") source $LIB_DIRECTORY/macos.sh ;;
    "--brew") source $LIB_DIRECTORY/brew.sh ;;
    "--gem") source $LIB_DIRECTORY/gem.sh ;;
    "--apm") source $LIB_DIRECTORY/apm.sh ;;
  esac
done
