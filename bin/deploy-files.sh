#!/bin/bash -eux

    echo "===> Adding bash aliases and vim plugins for "
    sudo cp -r /vagrant/files/.bash* /root/
    sudo cp -r /vagrant/files/.vim* /root/
    sudo chown -R root:root /root
    cp -r /vagrant/files/.bash* /home/vagrant/
    cp -r /vagrant/files/.vim* /home/vagrant/
    sudo chown -R vagrant:vagrant /home/vagrant
    echo "===> files depoyed"
    echo " "

