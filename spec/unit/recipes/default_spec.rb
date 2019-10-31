#
# Cookbook:: python_cookbook
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python_cookbook::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'

    it "should check/get updates" do
      expect(chef_run).to update_apt_update "update_sources"
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it "should install python from a package" do
      expect(chef_run).to install_package "python"
    end

    it "should install pip from a package" do
      expect(chef_run).to install_package "python-pip"
    end

  end
end
