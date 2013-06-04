default["OpenWRT"]["base_url"] = "http://downloads.openwrt.org/snapshots/trunk/"

default["OpenWRT"]["firmware_platform"] = "ar71xx"
default["OpenWRT"]["firmware_image_builder"] = "ar71xx_generic"
default["OpenWRT"]["firmware_profile"] = "WNDR3700"
default["OpenWRT"]["firmware_model"] = "wndr3700"
default["OpenWRT"]["firmware_file"] = "openwrt-ar71xx-generic-wndr3700-squashfs-sysupgrade.bin"

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

default["OpenWRT"]["check_target_dir"] = "/tmp/OpenWRT_build"
default["OpenWRT"]["build_target_dir"] = "/tmp/OpenWRT_build"

default["OpenWRT"]["user"] = "root"
default["OpenWRT"]["host"] = "192.168.1.1"
default["OpenWRT"]["ssh_key"] = "~/.ssh/openwrt_router.pem"