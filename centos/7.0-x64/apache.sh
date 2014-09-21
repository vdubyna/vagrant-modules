#!/bin/bash

echo "-> Install apache"

echo "-> Prepare"
    if [[ $(which httpd) == */httpd ]]; then
        echo "Apache already installed"
        exit 0
    fi

    cd /tmp
    echo "-> Install"

    yum install -y -q httpd

    systemctl enable httpd
    systemctl restart httpd

echo "-> Success"
