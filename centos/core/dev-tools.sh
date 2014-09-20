#!/bin/bash

echo "Install tools for Developers"

echo "-> Prepare"
    yum -y update

echo "-> Install"

    for PACKAGE in unzip wget vim-enhanced mc git nc; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

echo "-> Success"