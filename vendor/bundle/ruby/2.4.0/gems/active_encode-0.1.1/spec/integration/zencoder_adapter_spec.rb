require 'spec_helper'
require 'zencoder'
require 'json'

describe ActiveEncode::EngineAdapters::ZencoderAdapter do
  before(:all) do
    ActiveEncode::Base.engine_adapter = :zencoder
  end
  after(:all) do
    ActiveEncode::Base.engine_adapter = :inline
  end

  let(:create_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_create.json'))) }

  before do
    allow(Zencoder::Job).to receive(:create).and_return(create_response)
  end

  let(:file) { "file://#{File.absolute_path('spec/fixtures/Bars_512kb.mp4')}" }

  describe "#create" do
    before do
      allow(Zencoder::Job).to receive(:details).and_return(details_response)
      allow(Zencoder::Job).to receive(:progress).and_return(progress_response)
    end

    let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_create.json'))) }
    let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_create.json'))) }
    let(:create_output) { [{ id: "511404522", url: "https://zencoder-temp-storage-us-east-1.s3.amazonaws.com/o/20150610/c09b61e4d130ddf923f0653418a80b9c/399ae101c3f99b4f318635e78a4e587a.mp4?AWSAccessKeyId=AKIAI456JQ76GBU7FECA&Signature=GY/9LMkQAiDOrMQwS5BkmOE200s%3D&Expires=1434033527", label: nil }] }

    subject { ActiveEncode::Base.create(file) }
    it { is_expected.to be_a ActiveEncode::Base }
    its(:id) { is_expected.not_to be_empty }
    it { is_expected.to be_running }
    its(:output) { is_expected.to eq create_output }
    its(:current_operations) { is_expected.to be_empty }
    its(:percent_complete) { is_expected.to eq 0 }
    its(:errors) { is_expected.to be_empty }
    its(:created_at) { is_expected.to eq '2015-06-10T14:38:47Z' }
    its(:updated_at) { is_expected.to eq '2015-06-10T14:38:47Z' }
    its(:finished_at) { is_expected.to be_nil }
    its(:tech_metadata) { is_expected.to be_empty }
  end

  describe "#find" do
    before do
      allow(Zencoder::Job).to receive(:details).and_return(details_response)
      allow(Zencoder::Job).to receive(:progress).and_return(progress_response)
    end

    context "a running encode" do
      let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_running.json'))) }
      let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_running.json'))) }
      let(:running_output) { [{ id: "510582971", url: "https://zencoder-temp-storage-us-east-1.s3.amazonaws.com/o/20150609/48a6907086c012f68b9ca43461280515/1726d7ec3e24f2171bd07b2abb807b6c.mp4?AWSAccessKeyId=AKIAI456JQ76GBU7FECA&Signature=vSvlxU94wlQLEbpG3Zs8ibp4MoY%3D&Expires=1433953106", label: nil }] }
      let(:running_tech_metadata) { { audio_bitrate: "52", audio_codec: "aac", audio_channels: "2", duration: "57992", mime_type: "mpeg4", video_framerate: "29.97", height: "240", video_bitrate: "535", video_codec: "h264", width: "320" } }

      subject { ActiveEncode::Base.find('166019107') }
      it { is_expected.to be_a ActiveEncode::Base }
      its(:id) { is_expected.to eq '166019107' }
      it { is_expected.to be_running }
      its(:output) { is_expected.to eq running_output }
      its(:current_operations) { is_expected.to be_empty }
      its(:percent_complete) { is_expected.to eq 30.0 }
      its(:errors) { is_expected.to be_empty }
      its(:created_at) { is_expected.to eq '2015-06-09T16:18:26Z' }
      its(:updated_at) { is_expected.to eq '2015-06-09T16:18:28Z' }
      its(:finished_at) { is_expected.to be_nil }
      its(:tech_metadata) { is_expected.to eq running_tech_metadata }
    end

    context "a cancelled encode" do
      let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_cancelled.json'))) }
      let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_cancelled.json'))) }

      subject { ActiveEncode::Base.find('165866551') }
      it { is_expected.to be_a ActiveEncode::Base }
      its(:id) { is_expected.to eq '165866551' }
      it { is_expected.to be_cancelled }
      its(:current_operations) { is_expected.to be_empty }
      its(:percent_complete) { is_expected.to eq 0 }
      its(:errors) { is_expected.to be_empty }
      its(:created_at) { is_expected.to eq '2015-06-08T20:43:23Z' }
      its(:updated_at) { is_expected.to eq '2015-06-08T20:43:26Z' }
      its(:finished_at) { is_expected.to eq '2015-06-08T20:43:26Z' }
      its(:tech_metadata) { is_expected.to be_empty }
    end

    context "a completed encode" do
      let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_completed.json'))) }
      let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_completed.json'))) }
      let(:completed_output) { { id: "509856876", audio_bitrate: "53", audio_codec: "aac", audio_channels: "2", duration: "5000", mime_type: "mpeg4", video_framerate: "29.97", height: "240", video_bitrate: "549", video_codec: "h264", width: "320", url: "https://zencoder-temp-storage-us-east-1.s3.amazonaws.com/o/20150608/ebbe865f8ef1b960d7c2bb0663b88a12/0f1948dcb2fd701fba30ff21908fe460.mp4?AWSAccessKeyId=AKIAI456JQ76GBU7FECA&Signature=1LgIyl/el9E7zeyPxzd/%2BNwez6Y%3D&Expires=1433873646", label: nil } }
      let(:completed_tech_metadata) { { audio_bitrate: "52", audio_codec: "aac", audio_channels: "2", duration: "57992", mime_type: "mpeg4", video_framerate: "29.97", height: "240", video_bitrate: "535", video_codec: "h264", width: "320" } }

      subject { ActiveEncode::Base.find('165839139') }
      it { is_expected.to be_a ActiveEncode::Base }
      its(:id) { is_expected.to eq '165839139' }
      it { is_expected.to be_completed }
      its(:output) { is_expected.to include completed_output }
      its(:current_operations) { is_expected.to be_empty }
      its(:percent_complete) { is_expected.to eq 100 }
      its(:errors) { is_expected.to be_empty }
      its(:created_at) { is_expected.to eq '2015-06-08T18:13:53Z' }
      its(:updated_at) { is_expected.to eq '2015-06-08T18:14:06Z' }
      its(:finished_at) { is_expected.to eq '2015-06-08T18:14:06Z' }
      its(:tech_metadata) { is_expected.to eq completed_tech_metadata }
    end

    context "a failed encode" do
      let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_failed.json'))) }
      let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_failed.json'))) }
      let(:failed_tech_metadata) { { mime_type: "video/mp4", checksum: "7ae24368ccb7a6c6422a14ff73f33c9a", duration: "6314", audio_codec: "AAC", audio_channels: "2", audio_bitrate: "171030.0", video_codec: "AVC", video_bitrate: "74477.0", video_framerate: "23.719", width: "200", height: "110" } }
      let(:failed_errors) { "The file is an XML file, and doesn't contain audio or video tracks." }

      subject { ActiveEncode::Base.find('166079902') }
      it { is_expected.to be_a ActiveEncode::Base }
      its(:id) { is_expected.to eq '166079902' }
      it { is_expected.to be_failed }
      its(:current_operations) { is_expected.to be_empty }
      its(:percent_complete) { is_expected.to eq 0 }
      its(:errors) { is_expected.to include failed_errors }
      its(:created_at) { is_expected.to eq '2015-06-09T20:52:57Z' }
      its(:updated_at) { is_expected.to eq '2015-06-09T20:53:00Z' }
      its(:finished_at) { is_expected.to eq '2015-06-09T20:53:00Z' }
      its(:tech_metadata) { is_expected.to be_empty }
    end
  end

  describe "#cancel!" do
    before do
      allow(Zencoder::Job).to receive(:cancel).and_return(cancel_response)
      allow(Zencoder::Job).to receive(:details).and_return(details_response)
      allow(Zencoder::Job).to receive(:progress).and_return(progress_response)
    end

    let(:cancel_response) { Zencoder::Response.new(code: 200) } # TODO: check that this is the correct response code for a successful cancel
    let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_cancelled.json'))) }
    let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_cancelled.json'))) }

    let(:encode) { ActiveEncode::Base.create(file) }
    subject { encode.cancel! }
    it { is_expected.to be_a ActiveEncode::Base }
    its(:id) { is_expected.to eq '165866551' }
    it { is_expected.to be_cancelled }
  end

  describe "reload" do
    before do
      allow(Zencoder::Job).to receive(:details).and_return(details_response)
      allow(Zencoder::Job).to receive(:progress).and_return(progress_response)
    end

    let(:details_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_details_running.json'))) }
    let(:progress_response) { Zencoder::Response.new(body: JSON.parse(File.read('spec/fixtures/zencoder/job_progress_running.json'))) }
    let(:reload_output) { [{ id: "510582971", url: "https://zencoder-temp-storage-us-east-1.s3.amazonaws.com/o/20150609/48a6907086c012f68b9ca43461280515/1726d7ec3e24f2171bd07b2abb807b6c.mp4?AWSAccessKeyId=AKIAI456JQ76GBU7FECA&Signature=vSvlxU94wlQLEbpG3Zs8ibp4MoY%3D&Expires=1433953106", label: nil }] }
    let(:reload_tech_metadata) { { audio_bitrate: "52", audio_codec: "aac", audio_channels: "2", duration: "57992", mime_type: "mpeg4", video_framerate: "29.97", height: "240", video_bitrate: "535", video_codec: "h264", width: "320" } }

    subject { ActiveEncode::Base.find('166019107').reload }
    it { is_expected.to be_a ActiveEncode::Base }
    its(:id) { is_expected.to eq '166019107' }
    it { is_expected.to be_running }
    its(:output) { is_expected.to eq reload_output }
    its(:current_operations) { is_expected.to be_empty }
    its(:percent_complete) { is_expected.to eq 30.0 }
    its(:errors) { is_expected.to be_empty }
    its(:created_at) { is_expected.to eq '2015-06-09T16:18:26Z' }
    its(:updated_at) { is_expected.to eq '2015-06-09T16:18:28Z' }
    its(:finished_at) { is_expected.to be_nil }
    its(:tech_metadata) { is_expected.to eq reload_tech_metadata }
  end
end
