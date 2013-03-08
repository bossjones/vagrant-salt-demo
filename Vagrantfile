# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.share_folder "salt-fileserver", "/srv", "srv"

  config.vm.define :minion do |minion_config|
    minion_config.vm.box = "precise32"
    minion_config.vm.host_name = "www.example.local"
    minion_config.vm.forward_port 80, 9000

    config.vm.provision :salt do |salt|
      salt.run_highstate = true
      salt.salt_install_type = "stable"
      salt.minion_config = "minion.conf"
    end
  end
end
