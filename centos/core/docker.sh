#!/bin/bash

echo "Install Docker"

echo "-> Prepare"
    if [[ $(which docker) == */docker ]]; then
        echo "Docker already installed"
        exit 0
    fi

echo "-> Install"
    yum -y install docker
echo "-> Success"
