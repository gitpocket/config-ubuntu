# Config Ubuntu
This is primarily for a Workstation (_Not a server_)
Works with __Debian__ and __Elementary OS__

- [Ubuntu Desktop](http://ubuntu.com/desktop)
- [Elementary Desktop](http://elementaryos.org/)

# Items Copied
- Some items (`termatinator`, `virtualenvs`) copied from [Dan Sackett](https://github.com/dansackett/dotfiles).

# Manual Install
Run these commands and tweak them as needed. The `-y` flag installs without a prompt. Run these commands from the terminal.

### Make PPA's Available

    $ sudo apt-get install -y python-software-properties

### PPA's for: Phalcon, Numix Icons, NodeJS
You must hit enter after each one of these.

    $ sudo apt-add-repository ppa:phalcon/stable
    $ sudo add-apt-repository ppa:numix/ppa
    $ sudo add-apt-repository ppa:chris-lea/node.js

Now lets run an update with our PPA's

    $ sudo apt-get update

### System Tools

    $ sudo apt-get install -y unity-tweak-tool compizconfig-settings-manager dconf-editor

### Numix Circle Icons

Use the Unity Tweak Tool (Apply Icon & Themes)

    $ sudo apt-get install -y numix-gtk-theme numix-icon-theme numix-icon-theme-circle

### Utilities

    $ sudo apt-get install -y vim git meld curl htop xclip terminator gdebi preload bleachbit ubuntu-restricted-extras

    # If you want wine
    $ sudo apt-get install -y wine

## LAMP & Python
Apache 2, PHP 5.5+, ApacheMods, Php5Mods, MySQL, Redis, and Header Files.

PHP 5

    $ sudo apt-get install -y php5 php5-dev php5-curl libpcre3-dev

Apache

    $ sudo apt-get install -y apache2 libapache2-mod-php5

Nginx

    $ sudo apt-get install -y nginx

Apache can serve python with mod_wsgi, otherwise Nginx

    $ sudo apt-get install libapache2-mod-wsgi

MySQL

    $ sudo apt-get install -y mysql-server mysql-client php5-mysql

Redis

    $ sudo apt-get install -y redis-server

Java Runtime

    $ sudo apt-get install -y default-jre

## Phalcon

    $ sudo apt-get update
    $ sudo apt-get install -y php5-phalcon

#### Phalcon Dev Tools
This is an easy to use install script that will cleanup after itself. It can also be used for updating:

    $ sudo bash install_phalcon_devtools.sh

To test it run: `$ phalcon`

## Python

If you need Python headers for some PIP packages install `python-dev`:

    $ sudo apt-get install -y python-dev

Otherwise you are good to go with PIP and a few packages:

    $ sudo apt-get install -y python-pip
    $ sudo pip install fabric virtualenv flask grip gunicorn

### Ruby
Install Ruby 1.9+ with header files in dev.

    $ sudo apt-get install ruby1.9.1 ruby1.9.1-dev

A few gems for front-end (I prefer NPM Gulp currently)

    $ sudo gem install sass compass middleman

### NodeJS
Using a PPA to fix the nodejs path issue

    $ sudo apt-get install nodejs

Bower

    $ sudo npm install bower -g

If installing coffee-script and typing `$ coffee` produces an error, make sure coffee is not within the $PATH

    $ echo $PATH

### Make MySQL Open to Apps

    $ sudo sed -i 's/bind-address/bind-address = 0.0.0.0#/' /etc/mysql/my.cnf

### PHP Composer:

    $ curl -sS https://getcomposer.org/installer | php && sudo mv composer.phar /usr/local/bin/composer

    # Usage
    $ composer <command>

### Fix Mouse Side Buttons in VMWare
Append the following to `yourbox.vmx` with the machine off.

    mouse.vusb.enable = "TRUE"
    mouse.vusb.useBasicMouse = "FALSE"
    usb.generic.allowHID = "TRUE"

### Install Vagrant VBGuest & Fix Bug with Location:

    $ vagrant plugin install vagrant-vbguest

    $ vagrant ssh
    $ sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions


### Install VirtualBox that uses Windows 8.1 Requires:

    $ vboxmanage list vms
    $ vboxmanage setextradata "The Box Name" VBoxInternal/CPUM/CMPXCHG16B 1

### Install AMD/ATI Drivers (Ubuntu Trusty 14)

    $ sudo apt-add-repository ppa:xorg-edgers/ppa
    [ENTER]

    $ sudo apt-get update
    $ sudo apt-get install fglrx
    $ sudo amdconfig --initial
    $ sudo apt-get install gksu

To Edit Catalyst Settings, Type the following in the Global Launcher:

    gksu amdcccle

### Remove AMD/ATI Drivers

    $ sudo apt-get remove --purge fglrx fglrx_* fglrx-amdcccle* fglrx-dev*
    $ sudo rm /etc/X11/xorg.conf
    $ sudo apt-get install --reinstall xserver-xorg-core libgl1-mesa-glx libgl1-mesa-dri libgl1-mesa-glx libgl1-mesa-dri
    $ sudo dpkg-reconfigure xserver-xorg

### Applications:
- [Chrome](https://www.google.com/intl/en-US/chrome/browser/)
- [Sublime Text 3](http://www.sublimetext.com/3)
- [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
- [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
  - Preferred: [Debian-based Linux distributions](https://www.virtualbox.org/wiki/Linux_Downloads)
- [Vagrant](http://www.vagrantup.com/)
- Kazam (Screen Recorder)
- Shutter
- Compiz Config
- gnome-system-tools
- Terminator
- Gdeb
- MySQL Workbench
- Synaptic Package Manager
- Bleachbit (Trash Cleaner)
- Preload (Intelligent Bootup Time)
- [Pixeluvo](http://www.pixeluvo.com/) Nice Image Editor
- [DBeaver](http://dbeaver.jkiss.org/)
- [HeidiSql](http://www.heidisql.com/) (After Wine in Terminal)
- Numix Theme & Numix Circle Icons
- PIP Grip (For easy localhost preview of markdown)
    - grip
    - fabric
    - virtualenv
    - virtualenvwrapper (see `templates/.bashrc` for location)