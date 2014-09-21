#!/bin/sh

echo "-> Prepare"
    if [[ -d /opt/TeamCity ]]; then
        echo "TeamCity already installed"
        exit 0
    fi

echo "Install TeamCity"

    wget -qO- http://download-cf.jetbrains.com/teamcity/TeamCity-8.1.4.tar.gz | tar xz -C /opt
    /opt/TeamCity/bin/teamcity-server.sh run

echo "-> Success"