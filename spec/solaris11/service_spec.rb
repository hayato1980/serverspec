require 'spec_helper'

include Serverspec::Helper::Solaris11

describe 'Serverspec service matchers of Solaris11' do
  it_behaves_like 'support service enabled matcher', 'sshd'
  it_behaves_like 'support service enabled with level matcher', 'sshd', 3
  it_behaves_like 'support service running matcher', 'sshd'
  it_behaves_like 'support service running under supervisor matcher', 'sshd'
  it_behaves_like 'support service running under unimplemented matcher', 'sshd'
  it_behaves_like 'support service monitored by monit matcher', 'unicorn'
  it_behaves_like 'support service monitored by unimplemented matcher', 'unicorn'
end
