#!/bin/bash

echo "Install EPEL Repository"

# http://blog.famillecollet.com/pages/Config-en

echo "-> Prepare"
    if [[ $(yum repolist) == *epel* ]]; then
        echo "EPEL Repository already installed"
        exit 0
    fi
    cd /tmp
    yum -y update

echo "-> Install"
    # Add Repository
    wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-1.noarch.rpm
    yum install -y epel-release-7-1.noarch.rpm

echo "-> Success"
