module Hydra::Derivatives
  class VideoDerivatives < Runner
    def self.processor_class
      Processors::Video::Processor
    end
  end
end
