#!/bin/bash
sudo apt-get install -y apache2-utils
htpasswd -c $1/.htpasswd $2
cat $1/.htpasswd
