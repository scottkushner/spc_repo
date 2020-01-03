require 'spec_helper'

describe Hydra::Derivatives::Processors::Document do
  subject { described_class.new(source_path, directives) }

  let(:source_path)    { File.join(fixture_path, "test.doc") }
  let(:output_service) { Hydra::Derivatives::PersistBasicContainedOutputFileService }

  before { allow(subject).to receive(:converted_file).and_return(converted_file) }

  describe "#encode_file" do
    context "when converting to jpg" do
      let(:directives)     { { format: "jpg" } }
      let(:converted_file) { "path/to/pdf/created/from/original" }
      let(:mock_processor) { double }

      before do
        allow(Hydra::Derivatives::Processors::Image).to receive(:new).with(converted_file, directives).and_return(mock_processor)
      end

      it "creates a thumbnail of the document using a pdf created from the original" do
        expect(mock_processor).to receive(:process)
        expect(File).to receive(:unlink).with(converted_file)
        subject.encode_file("jpg")
      end
    end

    context "when converting to another format" do
      let(:directives)     { { format: "png" } }
      let(:converted_file) { "path/to/converted.png" }
      let(:mock_content)   { "mocked png content" }

      before { allow(File).to receive(:read).with(converted_file).and_return(mock_content) }
      it "creates a thumbnail of the document" do
        expect(output_service).to receive(:call).with(mock_content, directives)
        expect(File).to receive(:unlink).with(converted_file)
        subject.encode_file("png")
      end
    end
  end
end
