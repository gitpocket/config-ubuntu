#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the ./install.sh script."
    exit
fi

echo "(+) Installing Postgres"
sudo apt-get install postgresql postgresql-client

echo "(+) Complete, run with $ sudo su - postgres"
