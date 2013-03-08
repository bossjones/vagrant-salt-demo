###Overview

This is merely a demo of Vagrant using a SaltStack provisioner.  After [downloading and installing Vagrant](http://downloads.vagrantup.com/), set up your Vagrant configuration with some additional elements:

Install the SaltStack provisioner for Vagrant:

```
vagrant gem install vagrant-salt
```

Auto update VirtualBox extensions - optional, but handy:

```
vagrant gem install vagrant-vbguest
```

Next, clone this repo and run the following commands:

```
git clone https://github.com/jaddison/vagrant-salt-demo.git
git submodule init
git submodule update
```

Then, start your engines (run Vagrant):

```
vagrant up
```
