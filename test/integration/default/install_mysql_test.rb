# # encoding: utf-8

# Inspec test for recipe dvwa::install_mysql

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
