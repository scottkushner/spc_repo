module Flipflop
  module Configurable
    attr_accessor :current_group

    def group(group)
      self.current_group = GroupDefinition.new(group)
      yield
    ensure
      self.current_group = nil
    end

    def feature(feature, **options)
      options = options.merge(group: current_group)
      feature = FeatureDefinition.new(feature, **options)
      FeatureSet.current.add(feature)
    end

    def strategy(strategy = nil, **options)
      if block_given?
        options[:name] = strategy.to_s
        options[:lambda] = Proc.new
        strategy = Strategies::LambdaStrategy
      end

      if strategy.kind_of?(Symbol)
        name = ActiveSupport::Inflector.camelize(strategy) + "Strategy"
        strategy = Strategies.const_get(name)
      end

      if strategy.kind_of?(Class)
        strategy = strategy.new(**options)
      end

      FeatureSet.current.use(strategy)
    end
  end
end
