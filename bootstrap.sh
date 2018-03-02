#!/usr/bin/env bash

LISTEN_IFACE=eth2

apt-get update
apt-get install -y tmux

echo -e "set keymap vi\nset editing-mode vi" >> /etc/inputrc

echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sysctl -p /etc/sysctl.conf
ln -s /vagrant/iptables.rules /etc/iptables.rules

cat << EOF > /etc/network/if-pre-up.d/iptablesload
#!/bin/sh
iptables-restore < /etc/iptables.rules
exit 0
EOF
chmod +x /etc/network/if-pre-up.d/iptablesload
/etc/network/if-pre-up.d/iptablesload
