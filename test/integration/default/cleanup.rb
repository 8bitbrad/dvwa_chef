# # encoding: utf-8

# Inspec test for recipe dvwa::cleanup

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/tmp/DVWA-master') do
  it { should_not exist }
end

describe file('/tmp/dvwa.zip') do
  it { should_not exist }
end
