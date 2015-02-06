require_relative '../spec_helper'

describe 'chef-sendmail::default' do
  # Use an explicit subject
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it "install sendmail" do
    expect(chef_run).to install_package("sendmail")
  end
end
