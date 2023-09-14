#!/bin/bash
cd /vagrant/keys
cp server1* /home/vagrant/.ssh
sudo chmod 0644 server1.pub
sudo chmod 0600 server1

sudo sed -i '$a\    StrictHostKeyChecking no' /etc/ssh/ssh_config
