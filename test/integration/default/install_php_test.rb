# # encoding: utf-8

# Inspec test for recipe dvwa::install_packages

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('unzip') do
  it { should be_installed }
end

describe package('php-fpm') do
  it { should be_installed }
end

describe package('php7.2-mysql') do
  it { should be_installed }
end

describe package('php-gd') do
  it { should be_installed }
end
