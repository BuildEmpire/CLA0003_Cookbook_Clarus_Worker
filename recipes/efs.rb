#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: efs
#

fsid = node['cookbook_clarus_worker']['efs']['fsid']
region = node['cookbook_clarus_worker']['efs']['region']
ftp_root = node['cookbook_clarus_worker']['ftp_root']

# If we have a File Storage ID for FTP, then mount EFS to it.
if fsid
  include_recipe 'nfs'
  mount_efs ftp_root do
    fsid fsid
    region region
    action :mount
  end
end