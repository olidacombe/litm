#!/usr/bin/env bash

LISTEN_IFACE=eth2

apt-get update
apt-get install -y tmux bridge-utils

echo -e "set keymap vi\nset editing-mode vi" >> /etc/inputrc

rm /etc/network/interfaces
ln -s /vagrant/interfaces /etc/network/interfaces
ifup br0

