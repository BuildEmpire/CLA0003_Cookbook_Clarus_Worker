#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: default
#

include_recipe 'apt'
include_recipe 'postgresql::client'
include_recipe 'appbox'
include_recipe 'cookbook_clarus_worker::ruby'
