#
# Cookbook Name:: skype
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

package "python-software-properties" do
  action :install
end

apt_repository "skype" do
  uri "http://archive.canonical.com/"
  distribution node['lsb']['codename']
  components ["partner"]
end

package "skype" do
  action :install
end

