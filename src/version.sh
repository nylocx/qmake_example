#!/bin/bash
PWD_DIR=$(dirname "$BASH_SOURCE")
echo "#define VERSION=$(git symbolic-ref HEAD 2> /dev/null | cut -b 12-)-$(git log --pretty=format:%h -1)" > $PWD_DIR/version.h
