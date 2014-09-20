#!/bin/bash

echo "Install Ruby"

echo "-> Prepare"
    if [[ $(which ruby) == */ruby ]]; then
        echo "Ruby already installed"
        exit 0
    fi

echo "-> Install"

    yum groupinstall -y "Development tools"
    yum install -y ncurses-devel gdbm-devel openssl-devel zlib-devel readline-devel libyaml-devel


    curl -sSL https://get.rvm.io | bash -s stable --ruby=2.0.0
    su -
    gem update
    gem update --system

echo "-> Success"