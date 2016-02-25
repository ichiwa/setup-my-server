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

### Ansible Roles
* common
* create-user
* nginx
* node.js (latest)
* mariadb
* mongod
* elasticsearch
* mongod-plugins (for japanese)
* ghost (OSS CMS blog engine)
