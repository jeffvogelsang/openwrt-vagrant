openwrt-vagrant
===============

My setup for building a custom OpenWRT firmware based on the most current Trunk snapshots.

The setup uses Vagrant (and VirtualBox) to provide a clean and isolated build environment for the OpenWRT Image Builder tool based on Ubuntu. Vagrant takes care of provisioning the Ubuntu box using a simple Chef recipe that installs the packages and dependencies that are required to build the OpenWRT firmware. As a result, one can quickly setup for and build OpenWRT firmware on their computer regardless of OS, and not have to figure out how to get OpenWRT to build on that computer/OS.

To try out my setup, do the following:

1. Install VirtualBox. (https://www.virtualbox.org/wiki/Downloads)
2. Install Vagrant. (http://downloads.vagrantup.com/)
3. Clone this repository.
4. Change to the directory containing your clone.
5. Type `vagrant up`. This will download an Ubuntu VM and provision requirements for OpenWRT builds.
6. Type `vagrant ssh -c "/openwrt/check"`. This will find out the current OpenWRT Trunk revision.
7. Type `vagrant ssh -c "/openwrt/update"`. This will download the latest snapshot and build a custom firmware based on that snapshot. If the firmware builds, the firmware binary will be copied to the cloned setup directory.

Build settings are configured in cookbooks/OpenWRT/attributes/default.rb. They can be overridden in VagrantFile.
