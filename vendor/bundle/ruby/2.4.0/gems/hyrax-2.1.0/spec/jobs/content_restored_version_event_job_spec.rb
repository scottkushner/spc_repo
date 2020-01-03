RSpec.describe ContentRestoredVersionEventJob do
  let(:user) { create(:user) }
  let(:file_set) { create(:file_set, title: ['Hamlet'], user: user) }
  let(:generic_work) { create(:generic_work, title: ['BethsMac'], user: user) }
  let(:mock_time) { Time.zone.at(1) }
  let(:event) do
    { action: "User <a href=\"/users/#{user.to_param}\">#{user.user_key}</a> " \
                          "has restored a version 'content.0' of " \
                          "<a href=\"/concern/file_sets/#{file_set.id}\">Hamlet</a>",
      timestamp: '1' }
  end

  before do
    allow_any_instance_of(User).to receive(:can?).and_return(true)
    allow(Time).to receive(:now).at_least(:once).and_return(mock_time)
  end

  it "logs the event to the depositor's profile and the FileSet" do
    described_class.perform_now(file_set, user, 'content.0')
    expect do
      described_class.perform_now(file_set, user, 'content.0')
    end.to change { user.profile_events.length }.by(1)
                                                .and change { file_set.events.length }.by(1)

    expect(user.profile_events.first).to eq(event)
    expect(file_set.events.first).to eq(event)
  end
end
