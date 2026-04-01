#!/bin/sh

# exit immediately if password-manager-binary is already in $PATH
type bw >/dev/null 2>&1 && exit
echo 'installing bitwarden cli'
sudo snap install bw
