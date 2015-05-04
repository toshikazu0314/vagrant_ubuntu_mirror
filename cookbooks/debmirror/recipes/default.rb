#
# Cookbook Name:: debmirror
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "debmirror" do
  action :install
end

template '/home/vagrant/mirrorbuild.sh' do
  source 'mirrorbuild.sh.erb'
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
end

execute "pubring.gpg" do
  command "gpg --no-default-keyring --keyring /home/vagrant/pubring.gpg --import /usr/share/keyrings/ubuntu-archive-keyring.gpg"
  not_if { ::File.exists?("/home/vagrant/pubring.gpg") }
  user 'vagrant'
  group 'vagrant'
  cwd '/home/vagrant'
  environment ({'HOME' => '/home/vagrant'})
end

execute "trustedkeys.gpg" do
  command "gpg --no-default-keyring --keyring /home/vagrant/trustedkeys.gpg --import /usr/share/keyrings/ubuntu-archive-keyring.gpg"
  not_if { ::File.exists?("/home/vagrant/trustedkeys.gpg") }
  user 'vagrant'
  group 'vagrant'
  cwd '/home/vagrant'
  environment ({'HOME' => '/home/vagrant'})
end
