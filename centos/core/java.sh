#!/bin/sh

echo "Install Java"

echo "-> Prepare"
    if [[ $(which java) == */java ]]; then
        echo "Java already installed"
        exit 0
    fi

echo "-> Install"



echo "-> Success"