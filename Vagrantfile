# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.define "masterNode" do |masterNode|
    masterNode.vm.box = "centos/8"
    masterNode.vm.box_version = "1905.1"
    masterNode.vm.hostname = "masterNode"
    masterNode.vm.provision "shell", path: "installAnsible.sh"
  end
  (0..4).each do |i|
   config.vm.define "node#{i}" do |node|
     node.vm.box = "centos/8"
     node.vm.box_version = "1905.1"
     node.vm.hostname = "node#{i}"
     node.vm.provision "shell", path: "createAnsibleUser.sh"
   end
  end
end
