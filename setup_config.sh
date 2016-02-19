#!/bin/sh
# output id_rsa to secret key file
chmod 600 ./private_key

cp ./private_key ./backup_keys/private_key_$(date +%Y-%m-%d_%H-%M-%S)

PRIVATE_KEY_PATH=$(echo `pwd`)/private_key

echo "# XXX
Host XXX
  HostName XXX
  User ichiwa
  Port 22
  IdentityFile $PRIVATE_KEY_PATH
" >> ~/.ssh/config

echo "please set XXX to ~/.ssh/config"
