# Wordpress Development Environment
This is a shell for creating a development environment for Wordpress.


## Requirements

- [VirtualBox][0]
- [Vagrant][1]
- [Wordpress][2]


## Setup


### Install [VirtualBox][0]
Typical `.dmg` installer.  Just follow the directions.  You can get the
installer from <https://www.virtualbox.org/wiki/Downloads>.


### Install [Vagrant][1]
Typical `.dmg` installer.  Just follow the directions.  You can get the
installer from <http://downloads.vagrantup.com>


### Install [Wordpress][2].
This should put it in `wordpress-dev/wordpress`.  Doing this following should
get everything in the right place.

    $ cd wordpress-dev
    $ curl -O http://wordpress.org/latest.tar.gz
    $ tar xvzf latest.tar.gz


### Create the virtual machine.
The virtual machine, which VirtualBox will host, must always be started from
the `wordpress-dev/vagrant/env` directory.

    $ cd wordpress-dev/vagrant/env
    $ vagrant up




[0]: https://www.virtualbox.org/wiki/Downloads
[1]: http://downloads.vagrantup.com
[2]: http://wordpress.org/download
