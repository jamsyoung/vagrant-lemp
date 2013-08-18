# Vagrant Based LEMP
This is a LEMP vagrant environment for development.  LEMP is short for Linux +
Nginx + MySQL + PHP.  In the past this was tailored to Wordpress development, I
have made it more generic so it can be used for anything that needs PHP and
MySQL.  In the future I am probably going to throw MongoDB in here as well.


## Requirements

- [VirtualBox][0]
- [Vagrant][1]


## Setup
### Install [VirtualBox][0]
Typical `.dmg` installer.  Just follow the directions.  You can get the
installer from <https://www.virtualbox.org/wiki/Downloads>.


### Install [Vagrant][1]
Typical `.dmg` installer.  Just follow the directions.  You can get the
installer from <http://downloads.vagrantup.com>


### Create and setup the virtual machine.
The virtual machine, which VirtualBox will host, must always be started from
the `vagrant-lemp/vagrant/env` directory.  There is a shell script you need to
run just once.  My Chef-fu is not good enough to get all of this automated with
Chef Solo.

    $ cd vagrant-lemp/vagrant/env
    $ vagrant up
    $ vagrant ssh
    $ sudo dev/setup/scripts/vmsetup.sh


### Restart the vm

    $ exit
    $ vagrant reload

You can go to <http://localhost:8080/phpinfo.php> to verify it is working.


## Development process

- Make your changes in `vagrant-lemp/dev` for whatever you are doing.  This is
  shared in the vm in `~/dev` as well.

- Start up your vm with `vagrant up` in the `vagrant-lemp/vagrant/env`
  directory.

- View your environment in your browser at <http://localhost:8080>


## The Virtual Machine
### Ubuntu

    $ uname -a
    Linux precise32 3.2.0-23-generic-pae #36-Ubuntu SMP Tue Apr 10 22:19:09 UTC 2012 i686 i686 i386 GNU/Linux


### Nginx

    $ nginx -v
    nginx version: nginx/1.1.19


### PHP

    $ php --version
    PHP 5.3.10-1ubuntu3.7 with Suhosin-Patch (cli) (built: Jul 15 2013 18:10:56) 
    Copyright (c) 1997-2012 The PHP Group
    Zend Engine v2.3.0, Copyright (c) 1998-2012 Zend Technologies
        with Xdebug v2.1.0, Copyright (c) 2002-2010, by Derick Rethans


### MySQL

    $ mysql --version
    mysql  Ver 14.14 Distrib 5.5.32, for debian-linux-gnu (i686) using readline 6.2


## Useful Info

- How to restart nginx: `$ sudo /etc/init.d/nginx restart`
- How to restart PHP5-FPM: `$ sudo /etc/init.d/php5-fpm restart`
- php.ini location: `/etc/php5/fpm/php.ini`
- How to enable errors to show: In `/etc/php5/fpm/php.ini` set `display_errors = On`
- How to enable xdebug html error format: In `/etc/php5/fpm/php.ini` set `html_errors = On`
- MySQL admin username and password is `root`




[0]: https://www.virtualbox.org/wiki/Downloads
[1]: http://downloads.vagrantup.com
