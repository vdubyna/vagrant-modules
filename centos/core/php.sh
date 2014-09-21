#!/bin/bash

echo "Install PHP"

echo "-> Prepare"
    if [[ $(which php) == */php ]]; then
        echo "PHP already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"

    for PACKAGE in php php-mcrypt php-gd php-mysql php-xml php-mbstring; do
        echo "--> Install package "$PACKAGE
        yum install -y -q $PACKAGE
    done

    echo "--> Set default Timezone"
    TIMEZONE=`timedatectl status | grep Timezone | grep -oP "\w+/\w+"`
    sed -i 's+;date.timezone =+date.timezone = '$TIMEZONE' +g' /etc/php.ini

echo "-> Success"
