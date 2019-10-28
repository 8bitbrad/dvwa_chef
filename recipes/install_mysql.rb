#
# Cookbook:: dvwa
# Recipe:: install_mysql
#

package %w(mysql-server) do
  action :install
end

execute 'create_dvwa_db' do
  command 'mysqladmin create dvwa && touch /root/created_dvwa_db'
  not_if { ::File.exist?('/root/created_dvwa_db') }
end

execute 'create_dvwa_user' do
  command 'mysql -e "grant all on dvwa.* to dvwa@localhost identified by \"p@ssw0rd\""'
end
