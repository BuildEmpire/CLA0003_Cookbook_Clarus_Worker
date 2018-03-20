#
# Cookbook Name:: cookbook_clarus_worker
# Recipe:: postgresql
#
# Install Postgresql client and system wide gem for FTP (if required in the future)
#

# Install the client for postgresql, as we always need this
postgresql_client_install 'Install Postgresql Client' do

end

# Ftp services need PG system wide.
postgresql_pg_gem 'install postgresql gem' do
  ruby_binary '/usr/local/rbenv/shims/ruby'
end