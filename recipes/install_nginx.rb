#
# Cookbook:: dvwa
# Recipe:: install_nginx
#

include_recipe 'nginx'

nginx_site 'default' do
  action :disable
  # notifies :reload, 'service[nginx]', :delayed
end

nginx_site 'dvwa' do
  template 'dvwa.erb'
  action :enable
  # notifies :reload, 'service[nginx]', :delayed
end

service 'nginx' do
  supports start: true, stop: true, restart: true, reload: true
  action :nothing
end
