#!/bin/bash

echo "Install Composer Package manager"

echo "-> Prepare"
    if [[ $(which composer) == */composer ]]; then
        echo "Composer already installed"
        exit 0
    fi
    cd /tmp

echo "-> Install"
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin
    mv -v /usr/bin/composer.phar /usr/bin/composer
    composer config --global repositories.speroteck composer http://composer.speroteck.com/
    composer config --global repositories.firegento composer http://packages.firegento.com/
    composer config -g process-timeout 3600

echo "-> Success"
