!#/bin/bash

sudo apt update -y

sudo apt install apache2 -y

sudo ufw app list

sudo ufw allow 'Apache'

sudo systemctl enable apache2

sudo systemctl start apache2
