require 'spec_helper'

describe 'php-wrapper::default' do
  set :backend, :exec

  describe port(9081) do
    it { should be_listening }
  end
end
