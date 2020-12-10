#!/bin/bash

ansible-playbook     -i inventory/mycluster/hosts.ini     -e 'ansible_python_interpreter=/usr/bin/python3'     -b cluster.yml

echo "should be in (kspray) ubuntu$master01:~/kubespray$"

sleep 5

deactivate ; cd
mkdir ~/.kube
sudo cp /etc/kubernetes/admin.conf ~/.kube/config
sudo chown ubuntu:ubuntu ~/.kube/config
kubectl get nodes
sudo usermod -aG docker ubuntu
newgrp docker
docker info
wget https://bit.ly/3kGJXFk -O cn.sh
kubectl get nodes
sudo apt-get install -y bash-completion
echo 'source <(kubectl completion bash)' >> ~/.bashrc
sudo wget https://bit.ly/3csQaRw     -O /etc/bash_completion.d/docker.sh
source .bashrc
echo "edit the hosts.ini file and add node 3 in 2 places"

