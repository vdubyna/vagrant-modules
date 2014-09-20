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

    yum install wget -y
    # Import Key - @TODO Verify import key for
    # wget --no-check-certificate https://fedoraproject.org/static/0608B895.txt -O /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
    # rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6

    # Add Repository
    wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-1.noarch.rpm
    wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
    rpm -Uvh remi-release-7*.rpm epel-release-7*.rpm
    # for RHEL only
    subscription-manager repos --enable=rhel-7-server-optional-rpms

echo "-> Success"
