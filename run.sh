#!/bin/bash

args="$@"

args="$@ -p 3000"

file=/data/db.json
if [ -f $file ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

file=/data/file.js
if [ -f $file ]; then
    echo "Found file.js seed file, trying to open"
    args="$args file.js"
fi
file=/data/info.js
if [ -f $file ]; then
    echo "Found info.js seed file, trying to open"
    args="$args info.js"
fi

json-server --watch $args
