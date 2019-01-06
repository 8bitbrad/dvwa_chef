#
# Cookbook:: dvwa
# Recipe:: dvwa_app
#

include_recipe 'dvwa::update'
include_recipe 'dvwa::install_nginx'
include_recipe 'dvwa::install_mysql'
include_recipe 'dvwa::install_php'
include_recipe 'dvwa::install_dvwa'
include_recipe 'dvwa::cleanup'
