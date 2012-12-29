#
# Cookbook Name:: owncloud
# Recipe:: install
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "owncloud"

# Copy owncloud folders
template "/tmp/install-owncloud.sh" do
  source "install-owncloud.sh.erb"
  variables :branch => node[:owncloud][:branch]
  mode 0755
end
execute "/tmp/install-owncloud.sh" do
  command "/tmp/install-owncloud.sh"
end

# create autoconf.php
template "/var/www/config/autoconfig.php" do
  source "autoconfig.php.erb"
  variables :config_data => Dir["/tmp/owncloud-autoconfig/*.conf"].map { |f| IO.read(f) }.join("\n")
  mode 0755
end

# install owncloud
execute "wget http://localhost/" do
  command "wget http://localhost/"
end
