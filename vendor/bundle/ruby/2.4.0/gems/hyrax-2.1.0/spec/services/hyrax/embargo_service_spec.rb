RSpec.describe Hyrax::EmbargoService do
  subject { described_class }

  let(:future_date) { 2.days.from_now }
  let(:past_date) { 2.days.ago }

  let!(:work_with_expired_embargo1) do
    build(:work, embargo_release_date: past_date.to_s).tap do |work|
      work.save(validate: false)
    end
  end

  let!(:work_with_expired_embargo2) do
    build(:work, embargo_release_date: past_date.to_s).tap do |work|
      work.save(validate: false)
    end
  end

  let!(:work_with_embargo_in_effect) { create(:work, embargo_release_date: future_date.to_s) }
  let!(:work_without_embargo) { create(:generic_work) }

  describe '#assets_with_expired_embargoes' do
    it 'returns an array of assets with expired embargoes' do
      returned_pids = subject.assets_with_expired_embargoes.map(&:id)
      expect(returned_pids).to include work_with_expired_embargo1.id, work_with_expired_embargo2.id
      expect(returned_pids).not_to include work_with_embargo_in_effect.id, work_without_embargo.id
    end
  end

  describe '#assets_under_embargo' do
    it 'returns all assets with embargo release date set' do
      returned_pids = subject.assets_under_embargo.map(&:id)
      expect(returned_pids).to include work_with_expired_embargo1.id, work_with_expired_embargo2.id, work_with_embargo_in_effect.id
      expect(returned_pids).not_to include work_without_embargo.id
    end
  end

  describe '#assets_with_deactivated_embargoes' do
    let(:id) { Noid::Rails::Service.new.mint }
    let(:attributes) do
      { 'embargo_history_ssim' => ['This is in the past'],
        'id' => id }
    end

    before do
      ActiveFedora::SolrService.add(attributes)
      ActiveFedora::SolrService.commit
    end

    it 'returns all assets with embargo history set' do
      returned_pids = subject.assets_with_deactivated_embargoes.map(&:id)
      expect(returned_pids).to include id
      expect(returned_pids).not_to include(work_without_embargo.id,
                                           work_with_expired_embargo1.id,
                                           work_with_expired_embargo2.id,
                                           work_with_embargo_in_effect.id)
    end
  end
end
