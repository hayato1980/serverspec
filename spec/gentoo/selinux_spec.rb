require 'spec_helper'

include Serverspec::Helper::Gentoo

describe selinux do
  it { should be_enforcing }
  its(:command) { should eq "getenforce | grep -i -- enforcing && grep -i -- ^SELINUX=enforcing$ /etc/selinux/config" }
end

describe selinux do
  it { should be_permissive }
  its(:command) { should eq "getenforce | grep -i -- permissive && grep -i -- ^SELINUX=permissive$ /etc/selinux/config" }
end

describe selinux do
  it { should be_disabled }
  its(:command) { should eq "getenforce | grep -i -- disabled && grep -i -- ^SELINUX=disabled$ /etc/selinux/config" }
end
