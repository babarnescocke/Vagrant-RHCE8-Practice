# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  (0..4).each do |i| # can be changed to any two integers in series
   config.vm.define "node#{i}" do |node|
     node.vm.box = "centos/8"
     node.vm.box_version = "1905.1"
     node.vm.hostname = "node#{i}"
     node.vm.provision "ansible" do |ansible|
       ansible.playbook = "node.yml"
     end
   end
  end
 config.vm.define "masterNode" do |masterNode|
    masterNode.vm.box = "centos/8" # a stand in, Free replacement of RHEL8
    masterNode.vm.box_version = "1905.1"
    masterNode.vm.hostname = "masterNode"
    masterNode.vm.provision "ansible" do |ansible|
      ansible.playbook = "masterNode.yml"
    end
  end
end
