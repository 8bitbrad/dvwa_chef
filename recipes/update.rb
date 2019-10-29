#
# Cookbook:: dvwa
# Recipe:: update
#

apt_update 'update'

execute 'upgrade' do
  command 'DEBIAN_FRONTEND=noninteractive apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" upgrade'
end

execute 'dist-upgrade' do
  command 'DEBIAN_FRONTEND=noninteractive apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" dist-upgrade'
end

execute 'disable_rpcbind' do
  command 'systemctl disable rpcbind && systemctl stop rpcbind'
end
