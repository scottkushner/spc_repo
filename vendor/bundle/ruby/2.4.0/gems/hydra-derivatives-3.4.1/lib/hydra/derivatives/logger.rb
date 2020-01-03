module Hydra::Derivatives
  class Logger
    class << self
      def method_missing(method_name, *arguments, &block)
        logger.send(method_name, *arguments, &block)
      rescue StandardError
        super
      end

      def respond_to?(method_name, _include_private = false)
        logger.respond_to? method_name
      end

      def respond_to_missing?(method_name, _include_private = false)
        logger.respond_to_missing? method_name
      end

      private

      def logger
        ActiveFedora::Base.logger || ::Logger.new(STDOUT)
      end
    end
  end
end
