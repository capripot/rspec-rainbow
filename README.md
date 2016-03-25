# :rainbow: rspec-rainbow

Adds some color to your rspec tests!

![rspec rainbow](https://raw.githubusercontent.com/mscoutermarsh/rspec-rainbow/master/rspec-rainbow.jpg)

## Installation

Add this line to your application's Gemfile:
```ruby
group :test do
  gem 'rspec-rainbow'
end
```
And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec-rainbow

Then running rspec >= 3.1:

    $ rspec --format RainbowFormatter

If you are running rspec < 3.1:

    $ rspec --format Rainbow

If you want to use Rainbow by default, add it to your ```.rspec``` file.

    --format RainbowFormatter

Use `Rainbow` for Rspec < 3.1

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Attribution :sparkling_heart:

Based on [Minitest's](https://github.com/seattlerb/minitest) Pride plugin

## For Help:
Tweet [@mscccc](https://twitter.com/mscccc) or open an issue.
