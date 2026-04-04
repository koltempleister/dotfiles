#!/bin/bash

install_on_fedora() {
  sudo dnf install -y ansible
}

install_on_ubuntu() {
  sudo apt-get update
  sudo apt-get install -y ansible
}

install_on_mac() {
  brew install ansible
}
#uncomment when ready
install_on_ubuntu

echo "Ansible installation complete."
sudo ansible-playbook ~/.bootstrap/setup.yml

echo 'login'
export BW_SESSION=$(bw login {{ .bitwardenEmail }} --raw)

echo 'clone repo's
git clone https://koltempleister@gmail.com:{{ (bitwarden "item" "github.com general repo token").login.password }}/oh-my-zsh-custom.git ~/.oh-my-zsh-custom 
git clone https://koltempleister@gmail.com:{{ (bitwarden "item" "github.com general repo token").login.password }}/wiki.git ~/wiki 
