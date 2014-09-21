#!/bin/bash

echo "Add SWAP"

echo "http://moonback.ru/page/swap-in-centos"

if test -f /swapfile; then echo "Swap already enabled." && exit 0; fi

    dd if=/dev/zero of=/swapfile bs=1M count=1000
    mkswap /swapfile
    swapon /swapfile
    echo "/swapfile          swap            swap    defaults        0 0" >> /etc/fstab
    chown root:root /swapfile
    chmod 0600 /swapfile

echo "-> Success"
