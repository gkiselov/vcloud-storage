source 'https://rubygems.org'

gemspec

if ENV['VCLOUD_CORE_DEV_MASTER']
  gem 'vcloud-core', :git => 'git@github.com:gds-operations/vcloud-core.git', :branch => 'master'
elsif ENV['VCLOUD_CORE_DEV_LOCAL']
  gem 'vcloud-core', :path => '../vcloud-core'
end
