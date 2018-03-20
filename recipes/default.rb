#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: default
#

include_recipe 'apt'
include_recipe 'appbox'
include_recipe 'cookbook_clarus_worker::directories'
include_recipe 'cookbook_clarus_worker::ruby'
include_recipe 'cookbook_clarus_worker::postgresql'
include_recipe 'cookbook_clarus_worker::efs'
include_recipe 'cookbook_clarus_worker::papertrail'
include_recipe 'cookbook_clarus_worker::logrotate'