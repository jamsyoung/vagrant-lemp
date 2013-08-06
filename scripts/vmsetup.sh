#!/bin/bash

# This must be run via sudo

rm ~/postinstall.sh

# basics
apt-get update -y
apt-get install git -y
apt-get install curl -y
apt-get install vim -y

## install php
apt-get install php5-cli php5-fpm php5-common php5-curl php5-xdebug php5-gd php-apc php-pear -y
