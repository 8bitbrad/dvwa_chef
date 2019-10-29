#
# Cookbook:: dvwa
# Recipe:: install_dvwa
#

remote_file "#{Chef::Config[:file_cache_path]}/dvwa.zip" do
  source 'https://github.com/ethicalhack3r/DVWA/archive/master.zip'
  action :create
end

execute 'unzip_dvwa_archive' do
  command "cp #{Chef::Config[:file_cache_path]}/dvwa.zip /tmp && unzip /tmp/dvwa.zip"
  cwd '/tmp'
  not_if { ::Dir.exist?('/tmp/DVWA-master') }
end

execute 'install_dvwa_files' do
  command 'cd /tmp/DVWA-master && cp -r * /usr/share/nginx/html && touch /root/created_dvwa_files'
  not_if { ::File.exist?('/root/created_dvwa_files') }
end

execute 'set_dvwa_file_permissions' do
  command 'cd /usr/share/nginx/html && chown -R www-data:www-data *'
end

cookbook_file '/usr/share/nginx/html/config/config.inc.php' do
  source 'dvwa_config'
  owner 'www-data'
  group 'www-data'
  mode '0644'
  action :create
end

cookbook_file '/etc/php/7.2/fpm/php.ini' do
  source 'php_ini'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
  # notifies :reload, 'service[php7.2-fpm]', :delayed
end

service 'php7.2-fpm' do
  supports start: true, stop: true, restart: true, reload: true
  action :nothing
end
