#
# Cookbook:: dvwa
# Recipe:: install_nginx
#

nginx_install 'dvwa' do
  source 'repo'
  default_site_enabled false
  action :install
end

nginx_site 'dvwa' do
  site_name 'dvwa'
  cookbook 'dvwa'
  template 'dvwa.erb'
  action :enable
  notifies :reload, 'service[nginx]', :delayed
end

service 'nginx' do
  supports start: true, stop: true, restart: true, reload: true
  action :nothing
end
