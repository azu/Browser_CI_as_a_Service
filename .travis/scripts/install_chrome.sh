#!/bin/sh

sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update --force-yes
sudo apt-get install -qq --force-yes imagemagick google-chrome-stable
