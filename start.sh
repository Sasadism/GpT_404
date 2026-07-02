#!/bin/sh

set -e

mkdir -p /app

cd /app

echo "Downloading latest 3X-UI..."

ARCH="linux-amd64"

URL="https://github.com/MHSanaei/3x-ui/releases/latest/download/x-ui-${ARCH}.tar.gz"

curl -L "$URL" -o x-ui.tar.gz

tar -xzf x-ui.tar.gz

chmod +x x-ui

echo "Starting 3X-UI..."

echo "=========="
pwd
ls -lah
find . -maxdepth 2 -type f
echo "=========="

chmod +x ./x-ui
ls -lah ./x-ui

./x-ui
