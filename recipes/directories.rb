#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: directories
#

app_root = node['cookbook_clarus_worker']['app_root']
deploy_user = node['appbox']['deploy_user']

# Create the base location for the shared files
directory app_root do
  owner deploy_user
  group deploy_user
  mode '0755'
  action :create
  recursive true
end

# Create the base location for the storage ftp files
directory ftp_root do
  owner deploy_user
  group deploy_user
  mode '0755'
  action :create
  recursive true
end