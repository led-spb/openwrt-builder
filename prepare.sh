#!/bin/bash

DOWNLOAD_URL="https://downloads.openwrt.org/releases/18.06.2/targets/ar71xx/tiny/openwrt-imagebuilder-18.06.2-ar71xx-tiny.Linux-x86_64.tar.xz"
BIN_DIR=./bin

cd $(dirname $0)
mkdir -p $BIN_DIR 2>/dev/null
curl -s "$DOWNLOAD_URL" | tar xJ -C $BIN_DIR --strip-components=1 