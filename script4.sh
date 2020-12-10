#!/bin/bash

. kspray/bin/activate
~/kubespray$ ansible-playbook \
    -i inventory/mycluster/hosts.ini \
    -e 'ansible_python_interpreter=/usr/bin/python3' \
    -b scale.yml --flush-cache
deactivate
kubectl get nodes
