#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright (C) 2014 Patrick Ayoup
#
# MIT License
#

begin
	if platform?('ubuntu')
		include_recipe "sublime-text::platform_ubuntu"
	else
		include_recipe "sublime-text::platform_#{node[:platform_family]}"
  	end
rescue Chef::Exceptions::RecipeNotFound => e
  log "!!!! This Cookbook does not support #{node[:platform_family]} :( !!!!"
  raise e
end

