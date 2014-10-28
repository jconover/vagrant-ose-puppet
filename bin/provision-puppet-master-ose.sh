#!/bin/bash -eux

################### OSE Puppet  ##########################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install OSE Puppet.'
    wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
    sudo dpkg -i puppetlabs-release-precise.deb
    sudo apt-get -y install puppet puppetmaster puppet-el puppet-lint
  elif which yum &> /dev/null; then
    wget https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
    rpm -ivh puppetlabs-release-el-6.noarch.rpm
    sudo yum -y install puppetmaster puppet httpd mod_ssl mod_passenger
    echo '===> OSE Puppet installed.'
    else
    echo 'No package installer available. You may need to install puppet manually.'
fi
