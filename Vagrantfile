# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu-server-12042-x64-vbox4210"

  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"

  config.vm.provider :virtualbox do |vb|

    vb.customize ["modifyvm", :id, "--memory", 1024]
    vb.customize ["modifyvm", :id, "--cpus", 2]

  end

  config.vm.provision :chef_solo do |chef|

    chef.cookbooks_path = "./cookbooks"
    chef.add_recipe "OpenWRT"

    chef.json = {
      :OpenWRT => {
        # -- Sample Overrides --
        # :ssh_key => 'id_rsa',
        # :firmware_platform => 'brcm47xx',
        # :firmware_image_builder => 'brcm47xx',
        # :firmware_profile => 'WRTSL54GS',
        # :firmware_model => 'wrtsl54gs',
        # :firmware_file => 'openwrt-wrtsl54gs-squashfs.bin'
      }
    }

  end

end