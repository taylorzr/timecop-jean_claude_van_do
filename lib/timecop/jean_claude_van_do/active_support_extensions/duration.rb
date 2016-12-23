class Timecop
  module JeanClaudeVanDo
    module ActiveSupportExtensions
      module Duration
        def ago(*args, &block)
          time = super
          Timecop.travel(time, &block) if block_given?
          time
        end

        def since(*args, &block)
          time = super
          Timecop.travel(time, &block) if block_given?
          time
        end
      end

      if defined?(::ActiveSupport::Duration)
        ::ActiveSupport::Duration.prepend(Duration)
      end
    end
  end
end
