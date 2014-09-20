#!/bin/sh

echo "Install TeamCity"
    wget http://download-cf.jetbrains.com/teamcity/TeamCity-8.1.4.tar.gz
    tar -zxvf TeamCity-8.1.4.tar.gz
    ./TeamCity/bin/runAll.sh start


echo "-> Success"