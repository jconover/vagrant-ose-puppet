#!/bin/bash -eux


################### Update System ##########################

if which apt-get &> /dev/null; then
    echo "===> Attempting to upgrade the system."
    sudo apt-get -y update
#    sudo apt-get -y upgrade
    sudo apt-get -y dist-upgrade
    echo '===> system updated.'
    echo " "
  elif which yum &> /dev/null; then
    sudo yum -y update
    echo '===> system updated.'
    echo " "
  else
    echo "===> Package couldn't be installed."
fi

################### VIM ##########################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install vim.'
    sudo apt-get -y install vim vim-puppet
  elif which yum &> /dev/null; then
    sudo yum -y install vim-enhanced
    echo '===> vim installed.'
  else
    echo 'No package installer available. You may need to install vim manually.'
fi

################### GIT ##########################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install git.'
    sudo apt-get -y install git
  elif which yum &> /dev/null; then
    sudo yum -y install git
    echo '===> git installed.'
  else
    echo 'No package installer available. You may need to install git manually.'
fi
