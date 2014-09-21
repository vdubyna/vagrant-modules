#!/bin/bash

echo "Set Timezone"
# In vagrant file add argument with timezone example 'Europe/Kiev'

echo "-> Prepare"

    if [[ -n $1 ]]; then
        echo 'Timezone' $1;
        rm -rf /etc/localtime
        ln -s /usr/share/zoneinfo/$1 /etc/localtime
    fi;

echo "-> Success"
