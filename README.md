# vagrant-boxes
A few public vagrant boxes to get you started on specific assignments

## Requirements

- [Oracle VirtualBox](https://www.virtualbox.org/) (Box tested with `4.3.16`)
- [Vagrant](http://www.vagrantup.com/) (Box tested with `1.7.4`)

Please read the documentation on how to install them on your platform (Windows, Mac OS X, Linux).
If you already have them installed you can check your current version using: `vagrant version` or `vagrant -v`

### Plugins

We use a couple of plugins for Vagrant that help our development. Please install them.

* [vb-guest](https://github.com/dotless-de/vagrant-vbguest) - installed with `vagrant plugin install vagrant-vbguest`, useful for keeping VirtualBox GuestAdditions up to date. Get it **[here](https://github.com/dotless-de/vagrant-vbguest)**.

## Configuration

After installing [Oracle VirtualBox](https://www.virtualbox.org/) and [Vagrant](http://www.vagrantup.com/) you should be good to go.
On the project directory (for example `CD` into vagrant-boxes/owncloud/ directory), run the following command:
```
vagrant up
```
### Owncloud Installation

Once the machine is booted and provisioned the only thing left to do is `vagrant ssh` into the machine and use the pre-installed [ocdev](https://github.com/owncloud/ocdev) development tool to install owncloud or clone the desired repository into the shared folder (in this case the content in [owncloud]https://github.com/owncloud/core)).

#### Installing from OCDEV Development Tool:

1. `vagrant ssh`
2. `cd /var/www/`
3. `ocdev setup base`
4. `sudo sh write2configdir.sh` [Setting Strong Directory Permissions](https://doc.owncloud.org/server/9.0/admin_manual/installation/installation_wizard.html#setting-strong-directory-permissions)
5. `CTRD + D` (Exist the vagrant machine)
6. `vagrant reload`

You should now be able to access the owncloud service through http://10.0.0.100/core
