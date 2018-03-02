#!/usr/bin/env bash

echo -e "set keymap vi\nset editing-mode vi" >> /etc/inputrc

apt-get update
apt-get install -y --no-install-recommends lubuntu-desktop
apt-get install -y tmux bridge-utils wireshark

rm /etc/network/interfaces
ln -s /vagrant/interfaces /etc/network/interfaces
ifup br0

service lightdm start
