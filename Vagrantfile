# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Box / OS
VAGRANT_BOX = 'geerlingguy/ubuntu2004'
VM_NAME = 'ecommerce'
# VM User — 'vagrant' by default
VM_USER = 'vagrant'
# Username on your Linux
LINUX_USER = 'wizz'

Vagrant.configure(2) do |config|
  # Vagrant box from Hashicorp
  config.vm.box = VAGRANT_BOX
  config.vm.define "ecommerce" do |config|
    # Actual machine name
    config.vm.hostname = VM_NAME
    # Set VM name in Virtualbox
  end  
  config.vm.provider "virtualbox" do |v|
    v.name = VM_NAME
    v.memory = 1024
  end
  #DHCP — comment this out if planning on using NAT instead
  config.vm.network "private_network", ip: "192.168.60.10"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "public_network"
  # Disable default Vagrant folder
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  # Install Git, Node.js, Latest npm
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y git
    apt-get install -y nodejs npm
    apt-get install -y build-essential
    apt-get install -y python3 python3-setuptools
    apt-get install -y python3-pip python3-requests
    apt-get install -y aptitude
    apt-get install -y python3
    apt-get install -y net-tools
    apt-get update
    apt-get upgrade -y
    apt-get autoremove -y
  SHELL

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ecommerce.yml"
  end
end