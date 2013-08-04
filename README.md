# Wordpress Development Environment
This is a shell for creating a development environment for Wordpress.


## Requirements

- [VirtualBox][0]
- [Vagrant][1]
- [Wordpress][2]


# Setup

- Install [VirtualBox][0]
- Install [Vagrant][1]
- Install [Wordpress][2]. This should put it in `wordpress-dev/wordpress`

        $ cd wordpress-dev
        $ curl -O http://wordpress.org/latest.tar.gz
        $ tar xvzf latest.tar.gz

- Create the virtual machine.

        $ cd wordpress-dev/vagrant/env
        $ vagrant up




[0]: https://www.virtualbox.org/wiki/Downloads
[1]: http://downloads.vagrantup.com
[2]: http://wordpress.org/download
