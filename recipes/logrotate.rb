#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: logrotate
#

logrotate_app node['cookbook_clarus_worker']['appname'] do
  path      ::File.join(node["appbox"]["apps_dir"], node['cookbook_clarus_worker']['appname'], 'shared', 'log', '*.log')
  options   ['missingok', 'delaycompress', 'copytruncate', 'notifempty', 'nocreate']
  size      100000
  rotate    7
end