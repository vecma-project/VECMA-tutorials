#!/bin/bash

PORT=2222

/usr/sbin/sshd -f /etc/ssh-jovyan/sshd_config
rm -rf ~/.ssh
mkdir ~/.ssh
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod og-wx ~/.ssh/authorized_keys
ssh-keyscan -4 -p $PORT localhost >> ~/.ssh/known_hosts
