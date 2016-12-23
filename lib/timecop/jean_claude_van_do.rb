require 'timecop'
require "timecop/jean_claude_van_do/version"

Dir.glob(File.join(__dir__, 'jean_claude_van_do', 'active_support_extensions', '**', '*.rb')).each { |file| require file }
Dir.glob(File.join(__dir__, 'jean_claude_van_do', 'core_extensions', '**', '*.rb')).each { |file| require file }
