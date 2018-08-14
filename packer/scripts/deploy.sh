#!/bin/bash

cd ~
bash --login
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
puma -d
foundPumas = 'ps aux | grep puma | grep reddit | wc -l'

if [ $foundPumas -e 0 ]; then
    echo "Puma server not found"
    exit 1
fi