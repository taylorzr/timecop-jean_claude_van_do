class Timecop
  module JeanClaudeVanDo
    module CoreExtensions
      module Date
        def initialize(*args)
          date = super
          Timecop.travel(date, &block) if block_given?
        end
      end

      ::Date.prepend(Date)
    end
  end
end
