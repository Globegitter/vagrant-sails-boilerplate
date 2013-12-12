vagrant-sails-boilerplate
=========================

A boilerplate for developint sails apps with vagrant.

### Usage

```
$ cd /path/to/project
$ git clone https://github.com/voidcontext/vagrant-sails-boilerplate.git .
$ rm -rf .git
$ # edit Cheffile
$ # edit Vagrantfile
$ vagrant plugin install vagrant-omnibus
$ vagrant plugin install vagrant-librarian-chef
$ # vagrant-hostsupdater
$ vagrant up
$ vagrant ssh
$ # create sails app on the vagrant box
$ # happy coding :)
```
