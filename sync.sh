#!/bin/bash

if ! git diff-index --quiet HEAD --; then
    echo "Git error."
    exit 1
fi

echo "Downloading files..."
git clone --depth 1 https://gitflic.ru/project/rurewa/mfua.git temp
rm -rf temp/.git
cp -rf temp/. .
rm -rf temp

echo "Pushing updates..."
git add .
git commit -m "update"
git push

echo "Success!"
