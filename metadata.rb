name             'cookbook_clarus_worker'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@clarussoftware.co.uk'
license          'Apache 2.0'
description      'The Clarus worker cookbook, running resque.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

recipe 'cookbook_clarus_worker', 'The Clarus worker cookbook, running resque.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{appbox apt build-essential ruby_rbenv ruby_build}.each do |cb|
  depends cb
end