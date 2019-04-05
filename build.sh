#!/bin/sh

BIN_DIR="$(dirname $0)/images"
. ./config

cd ./bin
make clean
make image PROFILE="$PROFILE" EXTRA_IMAGE_NAME="$IMAGE_NAME" PACKAGES="$PACKAGES"