#!/usr/bin/env bash

echo -e "set keymap vi\nset editing-mode vi" >> /etc/inputrc

apt-get update
apt-get install -y --no-install-recommends lubuntu-desktop
apt-get install -y tmux bridge-utils wireshark

cat << EOF > /etc/sysctl.d/60-bridge-relax.conf
net.bridge.bridge-nf-call-arptables = 0
net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-filter-pppoe-tagged = 0
net.bridge.bridge-nf-filter-vlan-tagged = 0
EOF

sysctl -p /etc/sysctl.d/60-bridge-relax.conf

rm /etc/network/interfaces
ln -s /vagrant/interfaces /etc/network/interfaces
ifup br0

service lightdm start
