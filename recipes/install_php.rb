#
# Cookbook:: dvwa
# Recipe:: install_php
#

package %w(unzip php-fpm php-mysqli php-gd) do
  action :install
end
