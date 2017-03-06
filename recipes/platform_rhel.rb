#
# Cookbook Name:: sublime-text
# Recipe:: platform_rhel
#
# MIT License
#

include_recipe 'ark'

ark "sublime-text" do
  url node['sublime-text']['tarball']['uri']
  version "#{node['sublime-text']['version']['generation']}"
  has_binaries ['sublime_text']
  prefix_root node['sublime-text']['linux']['install_dir']
  prefix_home node['sublime-text']['linux']['install_dir']
  action :install
end

#make icon
template "/usr/share/applications/sublime-text.desktop" do
  source 'sublime-text-menu.desktop.erb'
  owner 'root'
  group 'root'
  mode '0644'
end