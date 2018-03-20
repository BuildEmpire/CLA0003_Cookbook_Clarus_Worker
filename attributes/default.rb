default['cookbook_clarus_worker']['ruby']['version'] = '2.3.3'
default['cookbook_clarus_worker']['efs']['fsid'] = nil
default['cookbook_clarus_worker']['efs']['region'] = 'eu-west-1'
default['cookbook_clarus_worker']['papertrail']['destination_host'] = nil
default['cookbook_clarus_worker']['papertrail']['destination_port'] = nil
default['cookbook_clarus_worker']['app_root'] = "/home/apps/#{node['cookbook_clarus_worker']['appname']}"
default['cookbook_clarus_worker']['shared_root'] = "#{node['cookbook_clarus_worker']['app_root']}/shared"
default['cookbook_clarus_worker']['ftp_root'] = "#{node['cookbook_clarus_worker']['shared_root']}/storage"