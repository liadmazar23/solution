#!/bin/bash
cd /vagrant/keys
cp server2* /home/vagrant/.ssh
sudo chmod 0644 server2.pub
sudo chmod 0600 server2

sudo sed -i '$a\    StrictHostKeyChecking no' /etc/ssh/ssh_config
