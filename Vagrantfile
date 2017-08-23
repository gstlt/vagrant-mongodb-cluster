# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|

  # Ensure we use our vagrant private key
  config.ssh.insert_key = false
  config.ssh.private_key_path = '~/.vagrant.d/insecure_private_key'

  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  config.vm.define 'mongodb01.local' do |machine|
    #machine.vm.box = "debian/stretch64"
    machine.vm.box = "debian/jessie64"

    machine.vm.network :private_network, ip: '192.168.88.10'
    machine.vm.hostname = 'mongodb01.local'
    machine.vm.provision "shell", path: "mongo.sh"
  end

  config.vm.define 'mongodb02.local' do |machine|
    #machine.vm.box = "debian/stretch64"
    machine.vm.box = "debian/jessie64"

    machine.vm.network :private_network, ip: '192.168.88.11'
    machine.vm.hostname = 'mongodb02.local'
    machine.vm.provision "shell", path: "mongo.sh"
  end

  config.vm.define 'mongodb03.local' do |machine|
    #machine.vm.box = "debian/stretch64"
    machine.vm.box = "debian/jessie64"

    machine.vm.network :private_network, ip: '192.168.88.12'
    machine.vm.hostname = 'mongodb03.local'
    machine.vm.provision "shell", path: "mongo.sh"
  end

end
