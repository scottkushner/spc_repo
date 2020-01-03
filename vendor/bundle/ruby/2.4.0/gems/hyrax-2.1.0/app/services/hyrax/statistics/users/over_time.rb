module Hyrax
  module Statistics
    module Users
      class OverTime < Statistics::OverTime
        # Overridden to do a noncumulative query
        def points
          Enumerator.new(size) do |y|
            x = @x_min
            while x <= @x_max
              bottom = x
              x += @delta_x.days
              y.yield [@x_output.call(x), point(bottom, x)]
            end
          end
        end

        private

          def relation
            ::User.registered
          end

          # Override to make an activerecord date range query
          def query(min, max)
            { created_at: min..max }
          end
      end
    end
  end
end
