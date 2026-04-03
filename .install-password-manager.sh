#!/bin/sh

# exit immediately if password-manager-binary is already in $PATH
type bw >/dev/null 2>&1 && exit

sudo apt install snap

echo 'installing bitwarden cli'
sudo snap install bw

echo 'login'
export BW_SESSION=$(bw login {{ .bitwardenEmail }} --raw)
