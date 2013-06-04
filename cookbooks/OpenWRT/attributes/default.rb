# Where do we download the firmware files from?
default["OpenWRT"]["base_url"] = "http://downloads.openwrt.org/snapshots/trunk/"

# The platform/chipset for the router.
default["OpenWRT"]["firmware_platform"] = "ar71xx"

# The platform/chipset part of the OpenWRT ImageBuilder filename.
default["OpenWRT"]["firmware_image_builder"] = "ar71xx_generic"

# The profile we want to make.
default["OpenWRT"]["firmware_profile"] = "WNDR3700"

# The specific router we want firmware for.
default["OpenWRT"]["firmware_model"] = "wndr3700"

# The specific firmware we want to grab after firmwares are built.
default["OpenWRT"]["firmware_file"] = "openwrt-ar71xx-generic-wndr3700-squashfs-sysupgrade.bin"

# Packages we want to add in additional the profile base packages.
default["OpenWRT"]["packages"] = %w(
	block-mount
	ip
	iputils-traceroute6
	kmod-fs-ext4
	kmod-usb-storage
	luci
	luci-app-ddns
	luci-app-qos
	luci-app-samba
	luci-app-upnp
	luci-app-wol
	luci-ssl
	openvpn-easy-rsa
	openvpn-openssl
)

# Locations for downloading check file(s) and firmware files in Vagrant/Linux
default["OpenWRT"]["check_target_dir"] = "/tmp/OpenWRT_build"
default["OpenWRT"]["build_target_dir"] = "/tmp/OpenWRT_build"

# If deploying, username, host, and SSH key used to deploy.
default["OpenWRT"]["user"] = "root"
default["OpenWRT"]["host"] = "192.168.1.1"
default["OpenWRT"]["ssh_key"] = "~/.ssh/openwrt_router.pem"