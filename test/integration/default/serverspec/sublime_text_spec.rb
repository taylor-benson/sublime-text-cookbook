#
# Cookbook Name:: sublime-text
# Spec:: sublime_text
#
# Copyright (C) 2014 Patrick Ayoup
#
# MIT License
#

require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

describe package('sublime-text') do
  it { should be_installed }
end