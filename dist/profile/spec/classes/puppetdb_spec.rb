require 'spec_helper'
describe 'profile::puppetdb', :type => :class do
  let :facts do {
    :osfamily               => 'RedHat',
    :concat_basedir         => '/dne',
  } end

  context 'with defaults for all parameters' do
    it { is_expected.to create_class('profile::puppetdb') }
    it { is_expected.to contain_class('puppetdb') }
    it { is_expected.to contain_class('puppetdb::master::config') }
  end
end
