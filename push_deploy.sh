#!/usr/bin/env bash
set -e
REPO="aldenworksta/golatentdetour"
LIB="flame-comet.a"
URL="https://github.com/${REPO}/releases/download/frosty-anchor-eager-anchor/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
