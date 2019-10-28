# # encoding: utf-8

# Inspec test for recipe dvwa::install_dvwa

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/usr/share/nginx/html/config/config.inc.php') do
  it { should exist }
  it { should be_file }
  it { should_not be_directory }
  it { should be_owned_by 'www-data' }
  its('mode') { should cmp '0644' }
  its('sha256sum') { should eq '7543ce55a0f569cffc8a64276c10028d6b425e83f9ea73a1f7a689e5acc014c4' }
end

describe file('/etc/php/7.2/fpm/php.ini') do
  it { should exist }
  it { should be_file }
  it { should_not be_directory }
  it { should be_owned_by 'root' }
  its('mode') { should cmp '0644' }
  its('sha256sum') { should eq '63760ac14734781aefbec916ac42be9a0a99201ec4af05cd153bfef46135eaf6' }
end

describe service('php7.2-fpm') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
