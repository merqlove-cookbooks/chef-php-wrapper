#
# Cookbook Name:: php-wrapper
# Spec:: default
#
# Copyright (c) 2017 Alexander Merkulov, All Rights Reserved.

require 'spec_helper'

describe 'php-wrapper::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.default['php']['version'] = '5.6.13'
        node.automatic['ipaddress'] = '500.500.500.500' # Intentionally not a real IP
      end.converge(described_recipe)
    end

    it 'converges successfully' do
      stub_command('ls /recovery.conf')
      chef_run
    end

    it 'has attributes' do
      stub_command('ls /recovery.conf')
      expect(chef_run).to install_package('php')
    end
  end
end
