require 'serverspec'

set :backend, :exec
set :path, '/bin:/usr/local/bin:$PATH'

describe package("sendmail") do
 it { should be_installed }
end

describe package("mailx") do
 it { should be_installed }
end