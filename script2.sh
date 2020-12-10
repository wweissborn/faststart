#!/bin/bash

cd
cd kubespray
cp ~/hosts.ini ./inventory/mycluster/
virtualenv kspray
 . kspray/bin/activate
pip3 install -r requirements.txt
 ansible -i inventory/mycluster/hosts.ini all     -m ping -e 'ansible_python_interpreter=/usr/bin/python3'

echo "did everyone get pinged?"
echo "now vi ~/kubespral/roles/kubespray-defaults/defaults/main.yaml"

