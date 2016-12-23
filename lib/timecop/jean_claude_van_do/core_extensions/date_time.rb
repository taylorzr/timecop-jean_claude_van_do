class Timecop
  module JeanClaudeVanDo
    module CoreExtensions
      module DateTime
        def initialize(*args)
          date_time = super
          Timecop.travel(date_time, &block) if block_given?
        end
      end

      ::DateTime.prepend(DateTime)
    end
  end
end
