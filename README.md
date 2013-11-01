# Speedlaces

Dynamic named-argument object initialization.

## Installation

Add this line to your application's Gemfile:

    gem 'speedlaces'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install speedlaces

## Usage

    class MyClass
      include Speedlaces
      attr_accessor :foo, :baz
    end

    my_object = MyClass.new({ foo: 'bar', baz: false })
    my_object.foo #=> 'bar'
    my_object.baz #=> false

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
