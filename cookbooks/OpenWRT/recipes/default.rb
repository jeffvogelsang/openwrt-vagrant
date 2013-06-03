#
# Cookbook Name:: OpenWRT
# Recipe:: default
#
# Copyright 2013, Jeff Vogelsang
#
# All rights reserved - Do Not Redistribute
#

bash "install_something" do
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