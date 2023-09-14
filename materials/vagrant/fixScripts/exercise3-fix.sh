#!/bin/bash
sudo chmod 777 /etc/apache2/sites-available/00.conf
sudo echo "        <Location "/">
          Require all granted
                  </Location> " > /etc/apache2/sites-available/000-default.conf

sudo systemctl restart apache2

