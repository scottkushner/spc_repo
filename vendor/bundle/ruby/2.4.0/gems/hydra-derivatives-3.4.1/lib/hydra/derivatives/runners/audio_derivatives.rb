module Hydra::Derivatives
  class AudioDerivatives < Runner
    def self.processor_class
      Processors::Audio
    end
  end
end
