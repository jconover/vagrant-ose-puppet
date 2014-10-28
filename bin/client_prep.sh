#!/bin/bash

## Determine OS, if apt is prsent it's DEBIAN based, if not, then it is RHEL based.

################### Update System ##########################

if which apt-get &> /dev/null; then
    echo "===> Attempting to upgrade the system."
    sudo apt-get -y update
    sudo apt-get -y upgrade
    echo '===> system updated.'
    echo " "
  elif which yum &> /dev/null; then
    sudo yum -y update
    echo '===> system updated.'
    echo " "
  else 
    echo "===> Package couldn't be installed."
fi

############## VIM ###################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install Ansible client.'
    sudo apt-get -y install vim
    echo '===> ansible client installed.'
  elif which yum &> /dev/null; then
    sudo yum -y install vim-enhanced
    echo '===> ansible client installed.'
  else
    echo "===> Package couldn't be installed."
fi

############## Ansible ###################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install Ansible client.'
    sudo apt-get -y install python-simplejson
    echo '===> ansible client installed.'
  elif which yum &> /dev/null; then
    sudo yum -y install python-simplejson
    echo '===> ansible client installed.'
  else
    echo "===> Package couldn't be installed."
fi
