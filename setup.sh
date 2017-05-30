#!/bin/bash

curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli boto
sudo apt-get install unzip
wget -O terraform_0.9.6_linux_amd64.zip https://releases.hashicorp.com/terraform/0.9.6/terraform_0.9.6_linux_amd64.zip?_ga=2.214356247.1016357774.1496126356-517609593.1495983361
mkdir ~/terraform
unzip terraform_0.9.6_linux_amd64.zip -d ~/terraform
export PATH=$PATH:~/terraform
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
sudo cp ansible.cfg /etc/ansible/ansible.cfg
ssh-keygen
ssh-agent bash
ssh-add
aws configure --profile srdevops
