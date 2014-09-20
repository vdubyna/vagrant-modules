#!/bin/bash


# http://www.redmine.org/projects/redmine/wiki/Install_Redmine_25x_on_Centos_65_complete

echo "Install Redmine"

echo "-> Prepare"

echo "-> Install"

    echo 'http://www.redmine.org/projects/redmine/wiki/Install_Redmine_25x_on_Centos_65_complete'

    <VirtualHost *:80>
      ServerName dubyna.in.ua
      # !!! Be sure to point DocumentRoot to 'public'!
      DocumentRoot /somewhere/public
      <Directory /somewhere/public>
         # This relaxes Apache security settings.
         AllowOverride all
         # MultiViews must be turned off.
         Options -MultiViews
         # Uncomment this if you're on Apache >= 2.4:
         #Require all granted
      </Directory>
   </VirtualHost>

echo "-> Success"
