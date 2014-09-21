#!/bin/sh

echo "Install Java"

echo "-> Prepare"
    if [[ $(which java) == */java ]]; then
        echo "Java already installed"
        exit 0
    fi

echo "-> Install"

    yum -y install wget
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jre-7u65-linux-x64.rpm
    echo "cca8862e49cf2e6c6e28e1987c59a2f7  jre-7u65-linux-x64.rpm" >> MD5SUM
    md5sum -c MD5SUM
    rpm -Uvh jre-7u65-linux-x64.rpm
    rm -f jre-7u65-linux-x64.rpm MD5SUM

echo "-> Success"