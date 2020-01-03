RSpec.describe Hyrax::SelectTypePresenter do
  let(:instance) { described_class.new(model) }
  let(:model) { GenericWork }

  describe "#icon_class" do
    subject { instance.icon_class }

    it { is_expected.to eq 'fa fa-file-text-o' }
  end

  describe "#description" do
    subject { instance.description }

    it { is_expected.to eq 'Generic work works' }
  end

  describe "#name" do
    subject { instance.name }

    it { is_expected.to eq 'Generic Work' }
  end

  describe '#switch_to_new_work_path' do
    subject { instance.switch_to_new_work_path(route_set: routes, params: params) }

    let(:collection_id) { 'xyz123abc' }
    let(:routes) do
      Rails.application.routes.url_helpers.extend(ActionDispatch::Routing::PolymorphicRoutes)
    end

    context 'with add_works_to_collection param' do
      let(:params) { { add_works_to_collection: collection_id } }

      it { is_expected.to eq "/concern/#{model.to_s.tableize}/new?add_works_to_collection=#{collection_id}" }
    end

    context 'with id and controller params' do
      let(:params) { { id: collection_id, controller: 'hyrax/dashboard/collections' } }

      it { is_expected.to eq "/concern/#{model.to_s.tableize}/new?add_works_to_collection=#{collection_id}" }
    end

    context 'with no params' do
      let(:params) { {} }

      it { is_expected.to eq "/concern/#{model.to_s.tableize}/new" }
    end
  end

  describe '#switch_to_batch_upload_path' do
    subject { instance.switch_to_batch_upload_path(route_set: routes, params: params) }

    let(:collection_id) { 'xyz123abc' }
    let(:routes) { Hyrax::Engine.routes.url_helpers }

    context 'with add_works_to_collection param' do
      let(:params) { { add_works_to_collection: collection_id } }

      it { is_expected.to eq "/batch_uploads/new?add_works_to_collection=#{collection_id}&payload_concern=#{model}" }
    end

    context 'with id and controller params' do
      let(:params) { { id: collection_id, controller: 'hyrax/dashboard/collections' } }

      it { is_expected.to eq "/batch_uploads/new?add_works_to_collection=#{collection_id}&payload_concern=#{model}" }
    end

    context 'with no params' do
      let(:params) { {} }

      it { is_expected.to eq "/batch_uploads/new?payload_concern=#{model}" }
    end
  end
end
