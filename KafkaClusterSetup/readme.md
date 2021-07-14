# Creation of a Kafka cluster on GCP using Terraform and Ansible

The architecture is the following:

![architecture](kafka_ha.png)

The principle will be to create the infrastructure with Terraform:
* 3 Compute Engine instances
* 3 unmanaged instance groups
* 1 internal load balancer (which will create a healthcheck, a forwarding rule, some firewall rules behing the scene)
*  and to build the inventory list for the next step

Then, configure the nodes with Ansible by using 2 roles for:
* installing MongoDB  on all nodes
* initialize the cluster on the leader node

The ingredients will be the following:
- GCP
- Terraform 1.0
- Ansible 2.9
- Kafka 4.4

Fore more details, you can check the tutorial on this [link](https://medium.com/@belougatech/create-a-mongodb-cluster-in-2-command-lines-with-gcp-terraform-ansible-6b706c2d57d)

Installation of Ansible Playbook



```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
ansible --version


sudo apt-get remove python2.7 libexpat1-dev libpython-all-dev libpython-dev libpython-stdlib libpython2.7 libpython2.7-dev libpython2.7-minimal libpython2.7-stdlib python-minimal python-pip-whl python2.7-minimal sshpass
sudo apt-get remove ansible   -- if already installed by python 2.7
sudo apt-get remove python
pip install "pywinrm>=0.3.0"


sudo apt install python3-pip
update-alternatives --install /usr/bin/python python /usr/bin/python3 1



```

Terraform Execution : 

terraform init
terraform plan
terraform apply
terraform destroy 
terraform 


Ansible Playbook Execution Commands:

# /etc/ansible/hosts  --- where to execute ansible playbook deployment 

# Check all perfect on yaml file either to perform operation or not 
ansible-playbook -i hosts main.yaml --check

# Execut anisble playbook

ansible-playbook -i hosts main.yaml



