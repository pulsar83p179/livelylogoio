#!/usr/bin/env bash
set -e
TAG="gentle-harbor-frosty-badger"
LIB="scale-oasis.a"
URL="https://github.com/pulsar83p179/livelylogoio/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
