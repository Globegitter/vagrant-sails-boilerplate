vagrant-sails-boilerplate
=========================

A boilerplate for developing sails apps with vagrant.

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
```
First steps on the vagrant box:

```
$ cd /vagrant
$ # create a new sails app in the current folder (undocumented feature  :))
$ sails new .
$ # fix .gitignore file
$ # happy coding :)
```

Fix .gitigonre file by adding the following lines

```
### Vagrant and Chef
.chef/site-cookbooks
.chef/tmp
.vagrant
```
