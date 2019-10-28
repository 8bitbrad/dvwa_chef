# # encoding: utf-8

# Inspec test for recipe dvwa::install_nginx

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/etc/apt/sources.list.d/nginx.list') do
  it { should exist }
  it { should be_file }
  it { should_not be_directory }
  it { should be_owned_by 'root' }
  its('mode') { should cmp '0644' }
end

describe file('/etc/nginx/sites-available/dvwa') do
  it { should exist }
  it { should be_file }
  it { should_not be_directory }
  it { should be_owned_by 'root' }
  its('mode') { should cmp '0644' }
end

describe service('nginx') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
