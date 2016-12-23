# Timecop::JeanClaudeVanDo

JeanClaudeVando extends date & time objects to accept a block which is then time-traveled to that date/time.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timecop-jean_claude_van_do'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timecop-jean_claude_van_do

## Usage

```ruby
Date.new(2014, 11, 15) do
  Date.today # 11-15-2015
end

Time.new(2014, 11, 15) do
  Date.today # 11-15-2015
end

# If active_support's duration is loaded before jean_claude_van_do
1.day.ago do
  Date.today # Whatever 1 day ago is :)
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/timecop-jean_claude_van_do.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

