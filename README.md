###Overview

This is a demo of Vagrant using a [SaltStack](http://saltstack.com/) provisioner. It can be used as a template for a new webapp project. Following the steps below will set you up with a Ubuntu 12.04 (precise32) Vagrant VM running unconfigured nginx, supervisord, memcached, postgresql and rabbitmq. Feel free to fork and extend this example.

After [downloading and installing Vagrant](http://downloads.vagrantup.com/), you need to set up your Vagrant configuration with some additional elements.  You only have to do these things once on your development box.

```
vagrant gem install vagrant-salt
vagrant gem install vagrant-vbguest
```

The first installs the SaltStack provisioner for Vagrant. The second installs the Vagrant "auto-update VirtualBox extensions" module, which is optional, but handy.

Next, clone this repo and run the following commands:

```
git clone https://github.com/jaddison/vagrant-salt-demo.git
git submodule init
git submodule update
vagrant up
```

Your vagrant will now be provisioned and running - try browsing to `http://localhost:9000/`.

The [git submodule used is here](https://github.com/jaddison/salt-base-states). It is a simple set of Salt states and roles, which I plan to improve upon - pull requests are welcome. Feel free to use them in other projects.

#####TODO

* set up a `virtualenv` to host a Python webapp (ie. Django).
* set up database user, db, etc
* use Salt's templating to set up configuration files
* include multiple Vagrantfiles for different scenarios (ie. multi-VMs that communicate between themselves)