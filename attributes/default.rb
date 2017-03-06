#
# Cookbook Name:: sublime-text
# Attributes:: default
#
# Copyright (C) 2014 Patrick Ayoup
#
# MIT License
#

default['sublime-text']['version']['generation'] = 2
default['sublime-text']['version']['id'] = case node['sublime-text']['version']['generation']
                                           when 2
                                             "2.0.2"
                                           when 3
                                             "Build 3065"
                                           end 

default['sublime-text']['platform']['release'] = 'trusty'
default['sublime-text']['platform']['architecture'] = 'amd64'

default['sublime-text']['repository']['uri'] = "http://ppa.launchpad.net/webupd8team/sublime-text-#{node['sublime-text']['version']['generation']}/ubuntu"
default['sublime-text']['repository']['keyserver'] = 'keyserver.ubuntu.com'
default['sublime-text']['repository']['key'] = 'EEA14886'

# for generic linux os platforms
case node['sublime-text']['platform']['architecture']
when 'x32'
	default['sublime-text']['tarball']['uri'] = "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.tar.bz2"
else
	default['sublime-text']['tarball']['uri'] = "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2"
end
default['sublime-text']['linux']['install_dir'] = "/opt"