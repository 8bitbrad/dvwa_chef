#
# Cookbook:: dvwa
# Recipe:: cleanup
#

execute 'delete_dvwa_archive' do
  command 'rm -rf /tmp/DVWA-master'
end

execute 'clean_apt_cache' do
  command 'apt-get clean'
end
