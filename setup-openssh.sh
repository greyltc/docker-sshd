#!/usr/bin/env bash

# install openssh
pacman -S --noprogressbar --noconfirm --needed openssh

# generate some keys
ssh-keygen -A

# allow passwordless (& keyless = no security) ssh access
sed -i 's,#PermitEmptyPasswords no,PermitEmptyPasswords yes,g' /etc/ssh/sshd_config

# allow the root user to log in
sed -i 's,#PermitRootLogin prohibit-password,PermitRootLogin yes,g' /etc/ssh/sshd_config
