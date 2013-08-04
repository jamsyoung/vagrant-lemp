# Wordpress Development Environment
This is a shell for creating a development environment for Wordpress.


## TODO
- Configure Nginx in the VM to use PHP
- Document how to get Wordpress running


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


### Create and setup the virtual machine.
The virtual machine, which VirtualBox will host, must always be started from
the `wordpress-dev/vagrant/env` directory.

    $ cd wordpress-dev/vagrant/env
    $ vagrant up
    $ vagrant ssh
    $ sudo dev/scripts/vmsetup.sh


## Development process

- Make your changes in `wordpress-dev/wordpress` for whatever you are doing.

- Start up your vm with `vagrant up` in the `wordpress-dev/vagrant/env`
  directory.

- View your wordpress environment in your browser at <http://localhost:8080>


## The Virtual Machine


### Ubuntu

    $ uname -a
    Linux precise32 3.2.0-23-generic-pae #36-Ubuntu SMP Tue Apr 10 22:19:09 UTC 2012 i686 i686 i386 GNU/Linux


### Nginx

    $ nginx -v
    nginx version: nginx/1.1.19


### PHP
TBD


### MySQL
Admin username and password is `root`

    $ mysql --version
    mysql  Ver 14.14 Distrib 5.5.32, for debian-linux-gnu (i686) using readline 6.2




[0]: https://www.virtualbox.org/wiki/Downloads
[1]: http://downloads.vagrantup.com
[2]: http://wordpress.org/download
