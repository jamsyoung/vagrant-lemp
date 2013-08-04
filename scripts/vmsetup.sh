#!/bin/bash

# This must be run via sudo

rm -rv ~/postinstall.sh
apt-get update -y
apt-get install git -y
apt-get install curl -y
apt-get install vim -y
