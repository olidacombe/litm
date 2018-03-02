# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.network "private_network", ip: "192.168.33.99"
  config.vm.network "public_network", ip: "192.168.32.99", bridge: "ask"

  config.vm.provision :shell, path: "bootstrap.sh"

end
