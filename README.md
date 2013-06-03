openwrt-vagrant
===============

My setup for building a custom OpenWRT firmware based on the most current Trunk snapshots.

Note: This is a simple setup for building firmware for my particular router. It's configured to support a Netgear WNDR3700v1 router. However, it should be straightfoward to modify it to support the router of your choice.

The setup uses Vagrant (and VirtualBox) to provide a clean and isolated build environment for the OpenWRT Image Builder tool based on Ubuntu. Vagrant takes care of provisioning the Ubuntu box using a simple Chef recipe that installs the packages and dependencies that are required to build the OpenWRT firmware. As a result, one can quickly setup for and build OpenWRT firmware on their computer regardless of OS, and not have to figure out how to get OpenWRT to build on that computer/OS.

To try out my setup, do the following:

1. Install VirtualBox. (https://www.virtualbox.org/wiki/Downloads)
2. Install Vagrant. (http://downloads.vagrantup.com/)
3. Clone this repository.
4. Change to the directory containing your clone.
5. Type `vagrant up`. This will download an Ubuntu VM and provision it.
6. Type `vagrant ssh -c "/vagrant/check"`. This will find out the current OpenWRT Trunk revision.
7. Type `vagrant ssh -c "/vagrant/update"`. This will download the latest snapshot and build a custom firmware based on that snapshot. If the firmware builds, the firmware binary will be copied to the cloned setup directory.

Once the above is working, you can modify the script file "build" to contain the packages you want installed in addition to base image for your router firmware.

Future revisions may move more of the logic into Vagrant and Chef such that provisioning sets up scripts for the firmware, profile, and packages specified in the VagrantFile.
