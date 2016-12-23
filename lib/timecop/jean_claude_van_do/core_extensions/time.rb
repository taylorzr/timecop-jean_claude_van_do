class Timecop
  module JeanClaudeVanDo
    module CoreExtensions
      module Time
        def initialize(*args)
          time = super
          Timecop.travel(time, &block) if block_given?
        end

      end

      ::Time.prepend(Time)
    end
  end
end
