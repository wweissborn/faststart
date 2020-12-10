#!/bin/bash
git clone https://github.com/kubernetes-sigs/kubespray.git
cd kubespray/
 git checkout v2.12.0
mkdir inventory/mycluster
echo "Edit the hosts.ini file"
