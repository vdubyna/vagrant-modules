#!/bin/bash

echo "Install Apache CTL script like a2ensite"

echo "-> Prepare"
    if test -e '/etc/httpd/conf.d/a2-site.conf'; then
        echo "Apache CTL script like a2ensite already installed"
        exit 0
    fi

echo "-> Install a2ensite"
    echo "IncludeOptional sites-enabled/*.conf" > /etc/httpd/conf.d/a2-site.conf

SCRIPTDIR="/vagrant/modules/centos/7.0-x64/"

cp $SCRIPTDIR/apache-ctl/a2ensite /usr/local/bin/a2ensite
cp $SCRIPTDIR/apache-ctl/a2dissite /usr/local/bin/a2dissite

chmod +x /usr/local/bin/a2*

echo "-> Add default vhost site configuration"
mkdir -p /etc/httpd/sites-available
mkdir -p /etc/httpd/sites-enabled

cp $SCRIPTDIR/apache-ctl/default.conf /etc/httpd/sites-available/default.conf

systemctl restart httpd

echo "-> Success"

