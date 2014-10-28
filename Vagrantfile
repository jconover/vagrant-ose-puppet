# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  #config.vm.box = "chef/centos-6.5"
  #config.vm.box = "chef/ubuntu-12.04"
  #config.vm.box = "chef/ubuntu-14.04"
  #config.vm.box = "chef/debian-7.6"

  config.vm.define "master" do |master|
  master.vm.box = "chef/ubuntu-12.04"
    master.vm.provider "virtualbox" do |v|
      v.memory = 1280
      v.cpus = 1
      v.name = "master-centos6-vagrant"
    end
    master.vm.provider "vmware_fusion" do |v, override|
      v.vmx["memsize"] = "1536"
      v.vmx["numvcpus"] = "2"
    end
    master.vm.provision :hosts
    master.vm.network :private_network, :auto_network => true
    #master.vm.network :public_network, :auto_network => true
    master.vm.network "forwarded_port", guest: 80, host: 8080
    #master.vm.network "forwarded_port", guest: 22, host: 2212
    #master.vm.network :private_network, ip: "192.168.77.2"
    master.vm.hostname = "master.example.com"
    master.vm.provision "shell", path: "bin/provision.sh"
    #master.vm.provision "shell", path: "bin/provision-chef.sh"
    master.vm.provision "shell", path: "bin/provision-puppet-master-ose.sh"
   # master.vm.provision "shell", path: "bin/provision-ansible.sh"
    master.vm.provision "shell", path: "bin/deploy-files.sh"
  end


## Node01 Configuration

  config.vm.define "node01" do |node01|
  node01.vm.box = "chef/ubuntu-12.04"
    node01.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
      v.name = "node01-centos6-vagrant"
    end
    node01.vm.provider "vmware_fusion" do |v, override|
      v.vmx["memsize"] = "512"
      v.vmx["numvcpus"] = "1"
    end
    node01.vm.provision :hosts
    #node01.vm.network :private_network, :auto_network => true
    #node01.vm.network :public_network, :auto_network => true
    node01.vm.network "forwarded_port", guest: 80, host: 8081
    #node01.vm.network "forwarded_port", guest: 22, host: 2223
    node01.vm.network :private_network, ip: "192.168.77.3"
    node01.vm.hostname = "node01.example.com"
    node01.vm.provision "shell", path: "bin/provision.sh"
    node01.vm.provision "shell", path: "bin/provision-puppet-client-ose.sh"
    node01.vm.provision "shell", path: "bin/deploy-files.sh"
  end


## mail Configuration

  config.vm.define "mail" do |mail|
  mail.vm.box = "chef/centos-6.5"
    mail.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
      v.name = "mail-centos6-vagrant"
    end
    mail.vm.provider "vmware_fusion" do |v, override|
      v.vmx["memsize"] = "512"
      v.vmx["numvcpus"] = "1"
    end
    mail.vm.provision :hosts
    #mail.vm.network :private_network, :auto_network => true
    #mail.vm.network :public_network, :auto_network => true
    mail.vm.network "forwarded_port", guest: 80, host: 8081
    #mail.vm.network "forwarded_port", guest: 22, host: 2223
    mail.vm.network :private_network, ip: "192.168.77.3"
    mail.vm.hostname = "mail.example.com"
    mail.vm.provision "shell", path: "bin/provision.sh"
    mail.vm.provision "shell", path: "bin/provision-puppet-client-ose.sh"
    mail.vm.provision "shell", path: "bin/deploy-files.sh"
  end

## db Configuration

  config.vm.define "db" do |db|
  db.vm.box = "chef/debian-7.6"
    db.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
      v.name = "db-centos6-vagrant"
    end
    db.vm.provider "vmware_fusion" do |v, override|
      v.vmx["memsize"] = "512"
      v.vmx["numvcpus"] = "1"
    end
    db.vm.provision :hosts
    #db.vm.network :private_network, :auto_network => true
    #db.vm.network :public_network, :auto_network => true
    db.vm.network "forwarded_port", guest: 80, host: 8081
    #db.vm.network "forwarded_port", guest: 22, host: 2223
    db.vm.network :private_network, ip: "192.168.77.3"
    db.vm.hostname = "db.example.com"
    db.vm.provision "shell", path: "bin/provision.sh"
    db.vm.provision "shell", path: "bin/provision-puppet-client-ose.sh"
    db.vm.provision "shell", path: "bin/deploy-files.sh"
  end

## web Configuration

  config.vm.define "web" do |web|
  web.vm.box = "chef/ubuntu-12.04"
    web.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
      v.name = "web-centos6-vagrant"
    end
    web.vm.provider "vmware_fusion" do |v, override|
      v.vmx["memsize"] = "512"
      v.vmx["numvcpus"] = "1"
    end
    web.vm.provision :hosts
    #web.vm.network :private_network, :auto_network => true
    #web.vm.network :public_network, :auto_network => true
    web.vm.network "forwarded_port", guest: 80, host: 8081
    #web.vm.network "forwarded_port", guest: 22, host: 2223
    web.vm.network :private_network, ip: "192.168.77.3"
    web.vm.hostname = "web.example.com"
    web.vm.provision "shell", path: "bin/provision.sh"
    web.vm.provision "shell", path: "bin/provision-puppet-client-ose.sh"
    web.vm.provision "shell", path: "bin/deploy-files.sh"
  end


  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # Enable provisioning with CFEngine. CFEngine Community packages are
  # automatically installed. For example, configure the host as a
  # policy server and optionally a policy file to run:
  #
  # config.vm.provision "cfengine" do |cf|
  #   cf.am_policy_hub = true
  #   # cf.run_file = "motd.cf"
  # end
  #
  # You can also configure and bootstrap a client to an existing
  # policy server:
  #
  # config.vm.provision "cfengine" do |cf|
  #   cf.policy_server_address = "10.0.2.15"
  # end

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file default.pp in the manifests_path directory.
  #
  # config.vm.provision "puppet" do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file  = "default.pp"
  # end

  # Enable provisioning with master solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  # config.vm.provision "chef" do |chef|
  #   chef.cookbooks_path = "../my-recipes/cookbooks"
  #   chef.roles_path = "../my-recipes/roles"
  #   chef.data_bags_path = "../my-recipes/data_bags"
  #   chef.add_recipe "mysql"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { mysql_password: "foo" }
  # end

  # Enable provisioning with master server, specifying the master server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision "chef" do |master|
  #   chef.master_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # If you have your own Chef Server, the default validation client name is
  # master-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
