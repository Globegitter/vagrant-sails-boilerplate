# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # pick an ubuntu 13.04 image
  config.vm.box = "phusion-open-ubuntu-14.04-amd64"
  config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"

  # config for librarian chef vagrant plugin
  config.librarian_chef.cheffile_dir = "."

  # config for omnibus vagrant plugin
  config.omnibus.chef_version = :latest

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    vb.customize ["modifyvm", :id, "--memory", "512"]
    # the following settings are recommended to avoid slow dbs lookups
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
  end

  config.vm.network :private_network, ip: "192.168.33.12"
  # config for hostupdater vagrant plugin
  # config.hostsupdater.aliases = []

  config.vm.provision :chef_solo do |chef|
    # set cookbook paths: site cookbooks are downloaded by librarian, cookbooks contains local cookbooks
    chef.cookbooks_path = [".chef/site-cookbooks", ".chef/cookbooks"]

    ##############
    # add recipes
    ##############
    chef.add_recipe "apt"
    chef.add_recipe "git"
    chef.add_recipe "redis::install_from_package"
    chef.add_recipe "nodejs"
    # npm is needed for its lwrp-s
    chef.add_recipe "npm"

    chef.add_recipe "mongodb::10gen_repo"
    chef.add_recipe "mongodb"
  
    chef.add_recipe "postgresql"
    
    chef.add_recipe "mysql"
    
    chef.add_recipe "packages"
    chef.add_recipe "fish"

    # maybe you want to add project dependent recipes
    # chef.add_recipe "sails-test"

    # recipes config
    chef.json = {
      "nodejs" => {
        "install_method" => "package",
      },
      "npm" => {
        "version" => "1.4.6",
      },
      "mongodb" => {
        "smallfiles" => true,
      },
      "packages" => {
        "apt" => [ "vim", "mc", "htop", "iotop"],
        "npm" => [ "sails@0.10.0-rc8", "grunt-cli" ],
      },
      "fish" => {
        "install_method" => "source",
        "set_as_default" => true,
      },
    }

  end


end
