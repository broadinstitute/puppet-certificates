require 'spec_helper'

describe 'certificates', type: :class do
  ['Debian', 'FreeBSD', 'Gentoo', 'RedHat'].each do |osfamily|
    context "on #{osfamily}" do
      if osfamily == 'Debian'
        let(:facts) do
          {
            'os' => {
              'distro' => {
                'codename' => 'bookworm',
                'id' => 'debian',
              },
              'family' => osfamily,
              'name'   => 'Debian',
              'release': {
                'full'  => '12.12',
                'major' => '12',
              },
            },
          }
        end

        context 'with defaults for all parameters' do
          it { is_expected.to contain_class('certificates') }
        end
      end

      if osfamily == 'FreeBSD'
        let(:facts) do
          {
            'os' => {
              'family' => osfamily,
              'name'   => 'FreeBSD',
              'release': {
                'full'  => '14.1-RELEASE-p1',
                'major' => '14',
              },
            },
          }
        end

        context 'with defaults for all parameters' do
          it { is_expected.to contain_class('certificates') }
        end
      end

      if osfamily == 'Gentoo'
        let(:facts) do
          {
            'os' => {
              'family' => osfamily,
              'name'   => 'Gentoo',
              'release': {
                'full'  => '3.16.1-gentoo',
                'major' => '3',
              },
            },
          }
        end

        context 'with defaults for all parameters' do
          it { is_expected.to contain_class('certificates') }
        end
      end

      if osfamily == 'RedHat'
        let(:facts) do
          {
            'os' => {
              'family' => osfamily,
              'name'   => 'RedHat',
              'release': {
                'full'  => '8.10',
                'major' => '8',
              },
            },
          }
        end

        context 'with defaults for all parameters' do
          it { is_expected.to contain_class('certificates') }
        end
      end
    end
  end
end
