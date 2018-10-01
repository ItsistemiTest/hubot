#!/bin/bash

apt-get -y update

#check if npm package is already installed if not install it
dpkg -s npm &>/dev/null || {
  # apt-get -y install nodejs npm=1.3.10
  apt-get -y install nodejs npm
  # link from binary which is installed and second parametar is alias
  ln -s /usr/bin/nodejs /usr/bin/node
}

command -v hubot &>/dev/null || {
  npm config set strict-ssl false
  sudo npm cache clean -f
  sudo npm install -g n
  sudo n stable
  sudo nodejs install -g n
  sudo n stable
  npm install -g yo generator-hubot
 }

