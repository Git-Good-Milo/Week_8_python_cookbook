#
# Cookbook:: python_cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package "python" do
  action :install
end

package "python-pip" do
  action :install
end
