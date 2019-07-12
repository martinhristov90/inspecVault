control 'vault_install' do

    title 'vault_install'
    desc 'Checks if vault is installed'
    
    describe systemd_service('vault') do
        it { should be_enabled }
        it { should be_running }
    end
    describe port(8200) do
        it { should be_listening }
        its('addresses') {should include '0.0.0.0'}
      end
end