#
# Cookbook:: dvwa
# Recipe:: cleanup
#

execute 'delete_dvwa_dir' do
  command 'rm -rf /tmp/DVWA-master'
end

execute 'delete_dvwa_zip' do
  command 'rm -f /tmp/dvwa.zip'
end

execute 'clean_apt_cache' do
  command 'apt-get clean'
end
