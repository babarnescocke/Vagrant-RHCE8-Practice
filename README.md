# Vagrant-RHCE8-Practice

A Vagrantfile to make a super straightforward practice environment for RHCE 8 exams

## Example Usage

```bash
sudo systemctl start libvirtd
git clone git@github.com:babarnescocke/Vagrant-RHCE8-Practice.git
cd Vagrant-RHCE8-Practice/
ssh-keygen -t rsa -b 4096 -f ./id_rsa -q -N ""
vagrant plugin install vagrant-libvirt
vagrant up --provider=libvirt
vagrant up
vagrant ssh masterNode
```

## Additional Points

One could if they wanted exchange centos/8 with rhel8 - but licensing is tricky