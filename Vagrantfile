# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Box / OS
VAGRANT_BOX = 'geerlingguy/ubuntu2004'
VM_NAME = 'ecommerce-vm'
# VM User — 'vagrant' by default
VM_USER = 'vagrant'
# Username on your Linux
LINUX_USER = 'wizz'

Vagrant.configure(2) do |config|
  # Vagrant box from Hashicorp
  config.vm.box = VAGRANT_BOX
  
  # Actual machine name
  config.vm.hostname = VM_NAME
  # Set VM name in Virtualbox
  config.vm.provider "virtualbox" do |v|
    v.name = VM_NAME
    v.memory = 1024
  end
  #DHCP — comment this out if planning on using NAT instead
  config.vm.network "private_network", type: "dhcp"
  # Disable default Vagrant folder
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  # Install Git, Node.js 6.x.x, Latest npm
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y git
    apt-get install -y nodejs
    apt-get install -y build-essential
    npm install -g npm
    apt-get update
    apt-get upgrade -y
    apt-get autoremove -y
  SHELL
end