#!/bin/bash -eux

############## Ansible ###################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install ansible.'
    sudo apt-get -y install ansible
    echo '===> ansible installed.'
    echo " "
    echo "===> Deploy Ansible host file."
    sudo cp /vagrant/files/ansible-hosts /etc/ansible/hosts
    echo "===> Restart sshd"
    sudo /etc/init.d/ssh restart
  elif which yum &> /dev/null; then
    sudo rpm -ivh /vagrant/files/epel-release-6-8.noarch.rpm
    #sudo rpm -ivh http://mirror.us.leaseweb.net/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo yum -y install ansible
    echo '===> ansible installed.'
    echo " "
    echo "===> Deploy Ansible host file."
    sudo cp /vagrant/files/ansible-hosts /etc/ansible/hosts
    echo "===> Restart sshd"
    sudo /sbin/service sshd restart
  else
    echo 'No package installer available. You may need to install ansible manually.'
fi
