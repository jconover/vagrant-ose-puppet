#!/bin/bash -eux

############## Chef ###################

if which apt-get &> /dev/null; then
    echo '===> Attempting to install chef.'
        curl -O https://dl.dropboxusercontent.com/u/8516792/private-chef_11.2.3-1_amd64.deb
        sudo dpkg -i private-chef_11.2.3-1_amd64.deb
        #sudo dpkg -i /vagrant/files/private-chef_11.2.3-1_amd64.deb
        curl -O https://dl.dropboxusercontent.com/u/8516792/chef-server-core_12.0.0-rc.5-1_amd64.deb
        sudo dpkg -i chef-server-core_12.0.0-rc.5-1_amd64.deb 
        #sudo dpkg -i /vagrant/files/chef-server-core_12.0.0-rc.5-1_amd64.deb
        echo '===> chef installed.'
        echo " "
        echo "===> Deploy Chef host file."
      elif which yum &> /dev/null; then
        curl -O https://dl.dropboxusercontent.com/u/8516792/private-chef-11.2.3-1.el6.x86_64.rpm
        #sudo rpm -Uvh /vagrant/files/private-chef-11.2.3-1.el6.x86_64.rpm
        sudo rpm -Uvh private-chef-11.2.3-1.el6.x86_64.rpm
        curl -O https://dl.dropboxusercontent.com/u/8516792/chef-server-core-12.0.0_rc.5-1.el5.x86_64.rpm
        sudo rpm -Uvh chef-server-core-12.0.0_rc.5-1.el5.x86_64.rpm
        #sudo rpm -Uvh /vagrant/files/chef-server-core-12.0.0_rc.5-1.el5.x86_64.rpm
        echo '===> chef installed.'
        echo " "
      else
        echo 'No package installer available. You may need to install chef manually.'
fi

############## Chef Opscode Manager###################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install chef opscode-manage.'
     https://dl.dropboxusercontent.com/u/8516792/opscode-manage_1.6.2-1_amd64.deb
    #sudo dpkg -i /vagrant/files/opscode-manage_1.6.2-1_amd64.deb
    echo '===> chef opscode-manage installed.'
    echo " "
    echo "===> Deploy Chef Opscode Manager host file."
  elif which yum &> /dev/null; then
    curl -O https://dl.dropboxusercontent.com/u/8516792/opscode-manage-1.6.2-1.el6.x86_64.rpm
    sudo rpm -Uvh opscode-manage-1.6.2-1.el6.x86_64.rpm
    #sudo rpm -Uvh /vagrant/files/opscode-manage-1.6.2-1.el6.x86_64.rpm
    echo '===> chef opscode-manage installed.'
    echo " "
  else
    echo 'No package installer available. You may need to install chef opscode-manage manually.'
fi

## Chef Configuration
sudo chef-server-ctl reconfigure
sudo chef-server-ctl user-create vagrant V Agrant vagrant@example.com vagrant
sudo chef-server-ctl org-create vagrant Vagrant Demo, Inc. --association_user vagrant
## Chef Manage
sudo chef-server-ctl install opscode-manage
sudo opscode-manage-ctl reconfigure
sudo chef-server-ctl reconfigure
## Chef Push Jobs

##################################################
## Other Chef Server Fetures you could install
##
##  https://docs.getchef.com/install_server.html
##################################################
