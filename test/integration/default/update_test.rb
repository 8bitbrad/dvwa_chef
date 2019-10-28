# # encoding: utf-8

# Inspec test for recipe dvwa::update

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/var/log/apt/history.log') do
  its('content') { should match /^Commandline: apt-get --yes --force-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confnew upgrade$/ }
  its('content') { should match /^Commandline: apt-get --yes --force-yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confnew dist-upgrade$/ }
end
