# Vagrant-RHCE8-Practice

A Vagrantfile to make a super straightforward practice environment for RHCE 8 exams

## Example Usage


```bash
sudo systemctl start libvirtd
git clone git@github.com:babarnescocke/Vagrant-RHCE8-Practice.git
cd Vagrant-RHCE8-Practice/
vagrant plugin install vagrant-libvirt
vagrant up --provider=libvirt
vagrant up
vagrant ssh masterNode
```
after this you have to create a hosts file that points to your nodes - but DNS is on by default in vagrant - so node0, node1, etc are routeable - so you just need to know how to create the hosts file - which is on the exam guidelines - hence leftout of this quick build. On top of that, you need to create an ansible.cfg that sets ansible user to ansible - again that is part of the exam guidelines so left out.

After those steps are done the quick check to make sure your ansible environment is up is to type:
```bash
ansible -m ping -b all
```
The first time you run it it will ask you to verify the host key - basically just ensuring you are connecting to who you think you are connecting to - and then it will attempt to become root - output pong and exit.

After you are done - or just want to start again from scratch - exit the masterNode logout or exit and then type:
```bash
vagrant destroy
```
this should destroy all the current vms, typing vagrant up again should bring everything backup.

## Requirements

Can probably only be run on Linux or Unix - perhaps a Mac.

  * [Vagrant][vagrant]
  * [libvirt][libvirt] - not strictly needed - could be run on Vagrant otherwise
  * [Ansible][ansible]


[vagrant]: https://www.vagrantup.com/docs/installation
[libvirt]: https://libvirt.org/compiling.html
[ansible]: https://docs.ansible.com/ansible/latest/installation_guide/index.html

## Additional Points

One could if they wanted exchange centos/8 with rhel8 - but licensing is tricky