#
# Cookbook Name:: OpenWRT
# Recipe:: default
#
# Copyright 2013, Jeff Vogelsang
#
# All rights reserved - Do Not Redistribute
#

bash "update-apt-package-list" do
  user "root"
  cwd "/tmp"
  code "apt-get update"
end

apt_package "build-essential" do
  action :install
end

apt_package "flex" do
  action :install
end

apt_package "gawk" do
  action :install
end

apt_package "gcc-multilib" do
  action :install
end

apt_package "gettext" do
  action :install
end

apt_package "git-core" do
  action :install
end

apt_package "ia32-libs-multiarch" do
  action :install
end

apt_package "libncurses5-dev" do
  action :install
end

apt_package "subversion" do
  action :install
end

apt_package "zlib1g-dev" do
  action :install
end

directory "/openwrt" do
  owner "vagrant"
  group "vagrant"
  mode 00755
  action :create
end

template "/openwrt/check" do
  source "check.erb"
  mode 00755
  owner "vagrant"
  group "vagrant"
  variables({
     :base_url => node[:OpenWRT][:base_url],
     :check_target_dir => node[:OpenWRT][:check_target_dir],
     :firmware_platform => node[:OpenWRT][:firmware_platform]
  })
end

template "/openwrt/update" do
  source "update.erb"
  mode 00755
  owner "vagrant"
  group "vagrant"
  variables({
     :build_target_dir => node[:OpenWRT][:build_target_dir],
     :firmware_platform => node[:OpenWRT][:firmware_platform],
     :firmware_image_builder => node[:OpenWRT][:firmware_image_builder],
     :firmware_model => node[:OpenWRT][:firmware_model],
     :firmware_file => node[:OpenWRT][:firmware_file]
  })
end

template "/openwrt/build" do
  source "build.erb"
  mode 00755
  owner "vagrant"
  group "vagrant"
  variables({
    :profile => node[:OpenWRT][:firmware_profile],
    :packages => node[:OpenWRT][:packages]
  })
end

template "/openwrt/deploy" do
  source "deploy.erb"
  mode 00755
  owner "vagrant"
  group "vagrant"
  variables({
     :ssh_key => node[:OpenWRT][:ssh_key],
     :firmware_model => node[:OpenWRT][:firmware_model],
     :firmware_image_builder => node[:OpenWRT][:firmware_image_builder],
     :user => node[:OpenWRT][:user],
     :host => node[:OpenWRT][:host]
  })
end