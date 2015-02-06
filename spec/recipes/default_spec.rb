require_relative '../spec_helper'

describe 'chef-sendmail::default' do
  # Use an explicit subject
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it "installs sendmail" do
    expect(chef_run).to install_package("sendmail")
  end

  it "installs mailutils" do
    expect(chef_run).to install_package("mailutils")
  end
end
