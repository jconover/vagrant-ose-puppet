#!/bin/bash -eux

    echo "===> Fixing sshd on $::rhel for ansible"
    sudo sed -i s/lib/libexec/g /etc/ssh/sshd_config

    echo "===> Restarting sshd"
    sudo /sbin/service sshd restart

