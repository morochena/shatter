# Shatter

Shatter is a generator for Rails that seperates an existing model logic into separate files. Shatter uses ActiveSupport::Concern's `included do end` block to call code in the primary model file  *in the context* of that model's class. 

When to use Shatter? 
- Your models are getting too fat.
- You don't want to break any existing code.
- You want to stay compatible with 'The Rails Way'. 

## Installation

Add this line to your Rails application's Gemfile:

```ruby
gem 'shatter-rails'
```

And then execute:

    $ bundle
    $ rails g shatter:shatter [model]

## Usage

```
Description:
    Shatter is a generator for Rails that seperates an existing model logic into separate files. 

Example:
    rails generate shatter:shatter thing

    This will create:
        /app/models/thing/assocations.rb
        /app/models/thing/operations.rb
        /app/models/thing/queries.rb
        /app/models/thing/validations.rb

    And will insert the following into /app/models/thing.rb:
        include Thing::Associations
        include Thing::Operations
        include Thing::Queries
        include Thing::Validations
```

Once you've run the generator, you can copy and paste code from your `thing.rb` model file into the appropriate file.  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/morochena/shatter.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
