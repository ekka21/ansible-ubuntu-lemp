# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
IP_ADDRESS = "192.168.33.34"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |v|
          v.name = "lemp"
          v.memory = 1024
          v.cpus = 2
          v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
          v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.hostname = "lemp"
  config.vm.network :private_network, ip: IP_ADDRESS

  config.vm.provision "ansible" do |ansible|
         ansible.playbook = "provision/main.yml"
         ansible.inventory_path = "provision/inventory/vagrant"
         ansible.sudo = true
         ansible.limit = 'all'
   end

end
