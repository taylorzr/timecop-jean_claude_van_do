describe Timecop::JeanClaudeVanDo::CoreExtensions::Time do
  describe '.new' do
    it 'time-travels a block' do
      Time.new(2014, 11, 15) do
        expect(Date.today).to eql(Date.new 2014, 11, 15)
      end
    end
  end
end
