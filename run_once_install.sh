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
