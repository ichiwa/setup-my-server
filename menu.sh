#!/bin/sh

menu="setup setup_user setup_config setup_nginx disallow_pw_login"

result=$(echo $menu | ./sentaku/bin/sentaku)
echo $result

if [ $result = "setup" ]; then
ansible-playbook -i ./hosts/root-hosts ./yml/setup.yml -c paramiko
elif [ $result = "setup_user" ]; then
ansible-playbook -i ./hosts/user-pw-hosts ./yml/setup_user.yml -c paramiko
elif [ $result = "setup_config" ]; then
./sh/setup_config.sh
elif [ $result = "setup_nginx" ]; then
ansible-playbook -i ./hosts/user-hosts ./yml/setup_nginx.yml -c paramiko
elif [ $result = "disallow_pw_login" ]; then
ansible-playbook -i ./hosts/root-hosts ./yml/disallow_password_login.yml -c paramiko
fi
