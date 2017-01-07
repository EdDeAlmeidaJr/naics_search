# NAICS

[![Gem Version](https://badge.fury.io/rb/naics.svg)](https://badge.fury.io/rb/naics) [![Code Climate](https://codeclimate.com/github/EdDeAlmeidaJr/naics_search/badges/gpa.svg)](https://codeclimate.com/github/EdDeAlmeidaJr/naics_search) [![Issue Count](https://codeclimate.com/github/EdDeAlmeidaJr/naics_search/badges/issue_count.svg)](https://codeclimate.com/github/EdDeAlmeidaJr/naics_search)

NAICS = North American Industry Classification System

Every industry in the USA has a NAICS code and sometimes you need to know what this code means. This is what this Ruby gem does.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'naics'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install naics


## Usage

In order to use this gem, do

```ruby
    require 'naics'
```

in your code, and use the method `#search('string_with_the_code')`. The result will be an object in the format

    {
      :code => "string_with_the_code",
      :description => "Description for the code given, if it exists",
      :explanation => "A short paragraph explaining what the code means."
    }

For example, in you run

```ruby
    NAICS.search('423830')
```

your output will be

    {
      :code => "432830",
      :description => "Machinery and Equipment Merchant Wholesalers",
      :explanation => "This industry comprises establishments primarily engaged in the merchant wholesale distribution of specialized machinery, equipment, and related parts generally used in manufacturing, oil well, and warehousing activities."
    }

**Important:** If you get `:description => nil` and `:explanation => nil`, this only means the code you provided does not exist.


## Command line

This gem also provides a command line executable you may use. Only type

    $ naics 432830

and you'll get an output like:

    Code:        423830
    Description: Machinery and Equipment Merchant Wholesalers
    Explanation: This industry comprises establishments primarily engaged in the merchant wholesale distribution of specialized machinery, equipment, and related parts generally used in manufacturing, oil well, and warehousing activities.

**Important:** If you get no text in `Description:` and `Explanation`, this only means the code you provided does not exist.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Things to do for future releases

- Search NAICS codes for given keywords.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/EdDeAlmeidaJr/naics_search.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

