# frozen_string_literal: true

require 'cancan/matchers'

describe Ability do
  let(:ability) { Ability.new(user) }

  describe 'class methods' do
    it 'has keys for access control fields' do
      expect(Ability.read_group_field).to eq 'read_access_group_ssim'
      expect(Ability.read_user_field).to eq 'read_access_person_ssim'
      expect(Ability.discover_group_field).to eq 'discover_access_group_ssim'
      expect(Ability.discover_user_field).to eq 'discover_access_person_ssim'
      expect(Ability.download_group_field).to eq 'download_access_group_ssim'
      expect(Ability.download_user_field).to eq 'download_access_person_ssim'
    end
  end

  describe 'Given an asset that has been made publicly discoverable' do
    let(:asset) { SolrDocument.new(id: 'public_discovery',
                                   discover_access_group_ssim: ['public']) }

    context 'Then a not-signed-in user' do
      let(:user) { nil }

      subject { ability }

      it { is_expected.to     be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then a registered user' do
      let(:user) { create(:user) }

      subject { ability }

      it { is_expected.to     be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'With an ID instead of a SolrDocument' do
      subject { ability }

      let(:user) { create(:user) }
      let(:asset) {
        create_solr_doc(id: 'public_discovery',
                        discover_access_group_ssim: ['public'])
      }

      # It should still work, even if we just pass in an ID
      it { is_expected.to     be_able_to(:discover, asset.id) }
      it { is_expected.not_to be_able_to(:read, asset.id) }
      it { is_expected.not_to be_able_to(:download, asset.id) }
    end
  end

  describe 'Given an asset that has been made publicly readable' do
    let(:asset) { SolrDocument.new(id: 'public_read',
                                   read_access_group_ssim: ['public']) }

    context 'Then a not-signed-in user' do
      let(:user) { nil }

      subject { ability }

      it { is_expected.to     be_able_to(:discover, asset) }
      it { is_expected.to     be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then a registered user' do
      let(:user) { create(:user) }

      subject { ability }

      it { is_expected.to     be_able_to(:discover, asset) }
      it { is_expected.to     be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'With an ID instead of a SolrDocument' do
      subject { ability }

      let(:user) { create(:user) }
      let(:asset) {
        create_solr_doc(id: 'public_read',
                        read_access_group_ssim: ['public'])
      }

      # It should still work, even if we just pass in an ID
      it { is_expected.to     be_able_to(:discover, asset.id) }
      it { is_expected.to     be_able_to(:read, asset.id) }
      it { is_expected.not_to be_able_to(:download, asset.id) }
    end
  end

  describe 'Given an asset that has been made publicly downloadable' do
    let(:id) { 'public_download' }
    let(:asset) { SolrDocument.new(id: id,
                                   download_access_group_ssim: ['public']) }

    context 'Then a not-signed-in user' do
      let(:user) { nil }

      subject { ability }

      it { is_expected.to be_able_to(:discover, asset) }
      it { is_expected.to be_able_to(:read, asset) }
      it { is_expected.to be_able_to(:download, asset) }
    end

    context 'Then a registered user' do
      subject { ability }

      let(:user) { create(:user) }

      it { is_expected.to be_able_to(:discover, asset) }
      it { is_expected.to be_able_to(:read, asset) }
      it { is_expected.to be_able_to(:download, asset) }
    end

    context 'With an ID instead of a record' do
      subject { ability }

      let(:user) { create(:user) }
      let(:asset) {
        create_solr_doc(id: id,
                        download_access_group_ssim: ['public'])
      }

      # It should still work, even if we just pass in an ID
      it { is_expected.to be_able_to(:discover, asset.id) }
      it { is_expected.to be_able_to(:read, asset.id) }
      it { is_expected.to be_able_to(:download, asset.id) }
    end
  end

  describe 'Given an asset to which a specific user has discovery access' do
    let(:user_with_access) { create(:user) }
    let(:asset) { SolrDocument.new(id: 'user_disco', discover_access_person_ssim: [user_with_access.email]) }

    context 'Then a not-signed-in user' do
      let(:user) { nil }

      subject { ability }

      it { is_expected.not_to be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then a different registered user' do
      let(:user) { create(:user) }

      subject { ability }

      it { is_expected.not_to be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then that user' do
      let(:user) { user_with_access }

      subject { ability }

      it { is_expected.to     be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end
  end

  describe 'Given an asset to which a specific user has read access' do
    let(:user_with_access) { create(:user) }
    let(:asset) { SolrDocument.new(id: 'user_read', read_access_person_ssim: [user_with_access.email]) }

    context 'Then a not-signed-in user' do
      let(:user) { nil }

      subject { ability }

      it { is_expected.not_to be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then a different registered user' do
      let(:user) { create(:user) }

      subject { ability }

      it { is_expected.not_to be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then that user' do
      let(:user) { user_with_access }

      subject { ability }

      it { is_expected.to     be_able_to(:discover, asset) }
      it { is_expected.to     be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end
  end

  describe 'Given an asset to which a specific user has download access' do
    let(:user_with_access) { create(:user) }
    let(:asset) { SolrDocument.new(id: 'user_read', download_access_person_ssim: [user_with_access.email]) }

    context 'Then a not-signed-in user' do
      let(:user) { nil }

      subject { ability }

      it { is_expected.not_to be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then a different registered user' do
      let(:user) { create(:user) }

      subject { ability }

      it { is_expected.not_to be_able_to(:discover, asset) }
      it { is_expected.not_to be_able_to(:read, asset) }
      it { is_expected.not_to be_able_to(:download, asset) }
    end

    context 'Then that user' do
      let(:user) { user_with_access }

      subject { ability }

      it { is_expected.to be_able_to(:discover, asset) }
      it { is_expected.to be_able_to(:read, asset) }
      it { is_expected.to be_able_to(:download, asset) }
    end
  end

  describe '.user_class' do
    subject { Blacklight::AccessControls::Ability.user_class }

    it { is_expected.to eq User }
  end

  describe '#guest_user' do
    let(:user) { nil }

    subject { ability.guest_user }

    it 'is a new user' do
      expect(subject).to be_a User
      expect(subject.new_record?).to be_truthy
    end
  end

  describe '#user_groups' do
    subject { ability.user_groups }

    context 'an unregistered user' do
      let(:user) { build(:user) }

      it { is_expected.to contain_exactly('public') }
    end

    context 'a registered user' do
      let(:user) { create(:user) }

      it { is_expected.to contain_exactly('registered', 'public') }
    end

    context 'a user with groups' do
      let(:user) { double(groups: %w(group1 group2), new_record?: false) }

      it { is_expected.to include('group1', 'group2') }
    end
  end

  describe 'with a custom method' do
    let(:user) { create(:user) }

    subject { MyAbility.new(user) }

    before do
      class MyAbility
        include Blacklight::AccessControls::Ability
        self.ability_logic += [:setup_my_permissions]

        def setup_my_permissions
          can :accept, SolrDocument
        end
      end
    end

    after do
      Object.send(:remove_const, :MyAbility)
    end

    # Make sure it called the custom method
    it { is_expected.to be_able_to(:accept, SolrDocument) }
  end
end
