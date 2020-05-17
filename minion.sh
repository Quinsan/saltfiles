#!/bin/bash

sudo apt-get update
sudo apt-get install salt-minion

echo "Anna masterin IP:"
read MASTERIP

echo "Anna minionin nimi:"
read MINIONID

echo "master: $MASTERIP\nid: $MINIONID" | sudo tee -a /etc/salt/minion

echo "Restarting salt-minion"
sudo systemctl restart salt-minion.service
