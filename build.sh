#!/bin/sh
cd $(dirname $0)
. ./config

if [ ! -f .password ]; then
  echo Create .password in current directory with WIFI password
  exit 1
fi


WIFI_PASSW=$(cat .password)
rm -rf ./bin/files 2>/dev/null
cp -r ./files bin/
sed -i "s/#WIFI_PASSW#/$WIFI_PASSW/" ./bin/files/etc/config/wireless


cd ./bin
make clean
make image PROFILE="$PROFILE" EXTRA_IMAGE_NAME="$IMAGE_NAME" PACKAGES="$PACKAGES" FILES="files/"
