#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: default
#

include_recipe 'apt'
include_recipe 'appbox'
include_recipe 'cookbook_clarus_worker::ruby'
include_recipe 'cookbook_clarus_worker::postgresql'