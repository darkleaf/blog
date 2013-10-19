# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :private_network, ip: '10.11.12.13'
  config.vm.synced_folder '.', '/home/vagrant/blog', nfs: true

  config.ssh.forward_agent = true

  config.omnibus.chef_version = :latest

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '512']
  end

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = 'roles'
    chef.add_role 'development'
  end
end
