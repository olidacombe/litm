# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.network "public_network", bridge: "ask qm", auto_config: false
  config.vm.network "public_network", bridge: "ask client", auto_config: false

  config.vm.provision :shell, path: "bootstrap.sh"

end
