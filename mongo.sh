#!/bin/bash

set -u
set -e

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y dirmngr vim

echo "192.168.88.10 mongodb01.local mongodb01" >> /etc/hosts
echo "192.168.88.11 mongodb02.local mongodb02" >> /etc/hosts
echo "192.168.88.12 mongodb03.local mongodb03" >> /etc/hosts

mkdir -p /data

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update

sudo apt-get install -y mongodb-org-shell mongodb-org-server mongodb-org-mongos mongodb-org-tools mongodb-org

sudo service mongod stop

sudo chown -R mongodb:mongodb /data
sudo sed -i 's/dbPath: \/var\/lib\/mongodb/dbPath: \/data/g' /etc/mongod.conf
sudo sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/g' /etc/mongod.conf

sudo service mongod start
