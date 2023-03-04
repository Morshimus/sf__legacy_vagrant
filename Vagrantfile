
# -*- mode: ruby -*-
# vi: set ft=ruby :
vm_box_1 = ENV['BOX'] ? ENV['BOX'] : 'generic/centos6'
vm_box_2 = ENV['BOX'] ? ENV['BOX'] : 'centos/7'
vm_hostname_1 = 'morsh-vagrant-pgsql-8-4'
vm_hostname_2 = 'morsh-vagrant2-pgsql-8-4'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
# Minimum Vagrant Version
Vagrant.require_version '>= 2.2.0'
VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define vm_hostname_1 do |pg|
      # Global Box details
      pg.vm.box = vm_box_1
      pg.vm.hostname = vm_hostname_1
      # Box Specifications
      # VirtualBox
      pg.vm.provider :virtualbox do |vb|
        vb.gui = false # Change to true to launch console
        vb.name = vm_hostname_1
        vb.memory = 4096
        vb.cpus = 2
      end
  
      # Start shell provisioning.
      pg.vm.provision 'shell' do |s|
        s.path = 'install_postgres.sh'
        s.privileged = true
      end
    end
    config.vm.define vm_hostname_2 do |pg|
        # Global Box details
        pg.vm.box = vm_box_2
        pg.vm.hostname = vm_hostname_2
    
        # Box Specifications
        # VirtualBox
        pg.vm.provider :virtualbox do |vb|
          vb.gui = false # Change to true to launch console
          vb.name = vm_hostname_2
          vb.memory = 4096
          vb.cpus = 2
        end
    
        # Start shell provisioning.
        pg.vm.provision 'shell' do |s|
          s.path = 'install_postgres.sh'
          s.privileged = true
        end
      end
  end