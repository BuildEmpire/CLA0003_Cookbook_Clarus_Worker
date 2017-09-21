#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: ruby
#
# Install and setup Ruby environment
#

rb_version = node['cookbook_clarus_worker']['ruby']['version']

rbenv_system_install 'foo'
rbenv_ruby rb_version
rbenv_global rb_version

rbenv_gem 'bundler' do
  rbenv_version rb_version
end

rbenv_gem 'procodile' do
  rbenv_version rb_version
end