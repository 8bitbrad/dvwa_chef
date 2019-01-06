#
# Cookbook:: dvwa
# Spec:: install_nginx
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'dvwa::install_nginx' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '18.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
