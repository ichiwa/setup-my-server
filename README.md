# setup-my-server

## Overview
Setup CentOS7 by Ansible.

## Usage
1. `cp hosts.example hosts`
2. Update hosts
3. `cp ./group_vars/all.example ./group_vars/all`
4. Update ./group_vars/all
5. `cp ./roles/ghost/files/config.example.js ./roles/ghost/files/config.js`
6. Update Ghost parameters, (ex, `vi ./roles/ghost/files/config.js`)
7. `ansible-playbook -i hosts site.yml -c paramiko`

## Development
1. `vagrant box add centos7 https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box `
2. Update Vagrantfile
3. `vagrant up`
like that...

### Ansible Roles
* common
* create-user
* nginx
* node.js (latest)
* mariadb
* mongod
* elasticsearch
* mongod-plugins (for japanese)
* [ghost](https://github.com/TryGhost/Ghost)
