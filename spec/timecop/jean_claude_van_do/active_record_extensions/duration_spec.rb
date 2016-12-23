# NOTE
# JeanClaudeVanDo doesn't require active support modules. The user must require
# any active_support modules before JeanClaudeVanDo
require 'active_support/core_ext/integer'

describe Timecop::JeanClaudeVanDo::ActiveSupportExtensions::Duration do
  describe '#ago' do
    it 'time-travels a block' do
      1.day.ago(Date.new 2014, 11, 15) do
        expect(Date.today).to be_within(10.seconds).of(Date.new 2014, 11, 14)
      end
    end

    it 'doesn’t interfere without a block' do
      expect(1.day.ago Date.new 2014, 11, 15)
        .to be_within(10.seconds).of(Date.new 2014, 11, 14)
    end
  end

  describe '#since' do
    it 'time-travels a block' do
      1.day.since(Date.new 2014, 11, 15) do
        expect(Date.today).to eql(Date.new 2014, 11, 16)
      end
    end

    it 'doesn’t interfere without a block' do
      expect(1.day.ago(Date.new 2014, 11, 15)).to eql(Date.new 2014, 11, 14)
    end
  end
end
