#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the ./install.sh script."
    exit
fi

sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# IMPORTANT: Do NOT have a trailing \ on the LAST item!

echo "(+) Complete! Use with $ ansible"
