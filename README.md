# casual_support

Utility methods as extensions to Ruby core objects, a la Active Support.

Also a nod to the epic [Facets] library, which has a vast quantity and
wide variety of utility functions.  *casual_support* distinguishes
itself in a few ways:

- Focus on fast implementations.  See the benchmarks directory for
  performance comparisons with typical and alternative implementations.
- Low memory footprint without required cherry-picking.  Cherry-picking
  is still possible though!
- Intended to be used alongside Active Support.  Does not clash with
  Active Support methods, and overrides only a few to provide more
  performant implementations.

[Facets]: https://github.com/rubyworks/facets


## Utility Methods

- Boolean
  - [#to_z](http://www.rubydoc.info/gems/casual_support/TrueClass:to_z)
- [Comparable](http://www.rubydoc.info/gems/casual_support/Comparable)
  - [#at_least](http://www.rubydoc.info/gems/casual_support/Comparable:at_least)
  - [#at_most](http://www.rubydoc.info/gems/casual_support/Comparable:at_most)
- [Date](http://www.rubydoc.info/gems/casual_support/Date)
  - [#to_hms](http://www.rubydoc.info/gems/casual_support/Date:to_hms)
  - [#to_ymd](http://www.rubydoc.info/gems/casual_support/Date:to_ymd)
- [Enumerable](http://www.rubydoc.info/gems/casual_support/Enumerable)
  - [#duplicates](http://www.rubydoc.info/gems/casual_support/Enumerable:duplicates)
  - [#index_to](http://www.rubydoc.info/gems/casual_support/Enumerable:index_to)
- [Hash](http://www.rubydoc.info/gems/casual_support/Hash)
  - [#displace](http://www.rubydoc.info/gems/casual_support/Hash:displace)
  - [#put!](http://www.rubydoc.info/gems/casual_support/Hash:put%21)
- [Integer](http://www.rubydoc.info/gems/casual_support/Integer)
  - [#to_hex](http://www.rubydoc.info/gems/casual_support/Integer:to_hex)
- [Numeric](http://www.rubydoc.info/gems/casual_support/Numeric)
  - [#sign](http://www.rubydoc.info/gems/casual_support/Numeric:sign)
- [String](http://www.rubydoc.info/gems/casual_support/String)
  - [#after](http://www.rubydoc.info/gems/casual_support/String:after)
  - [#after_last](http://www.rubydoc.info/gems/casual_support/String:after_last)
  - [#before](http://www.rubydoc.info/gems/casual_support/String:before)
  - [#before_last](http://www.rubydoc.info/gems/casual_support/String:before_last)
  - [#between](http://www.rubydoc.info/gems/casual_support/String:between)
  - [#drop](http://www.rubydoc.info/gems/casual_support/String:drop)
  - [#first](http://www.rubydoc.info/gems/casual_support/String:first)
  - [#from](http://www.rubydoc.info/gems/casual_support/String:from)
  - [#last](http://www.rubydoc.info/gems/casual_support/String:last)
  - [#prefix](http://www.rubydoc.info/gems/casual_support/String:prefix)
  - [#suffix](http://www.rubydoc.info/gems/casual_support/String:suffix)
  - [#to](http://www.rubydoc.info/gems/casual_support/String:to)
- [Struct](http://www.rubydoc.info/gems/casual_support/Struct)
  - [#assign_attributes](http://www.rubydoc.info/gems/casual_support/Struct:assign_attributes)
  - [.from_h](http://www.rubydoc.info/gems/casual_support/Struct.from_h)
- [Time](http://www.rubydoc.info/gems/casual_support/Time)
  - [#to_hms](http://www.rubydoc.info/gems/casual_support/Time:to_hms)
  - [#to_ymd](http://www.rubydoc.info/gems/casual_support/Time:to_ymd)


## Installation

Install from [Ruby Gems](https://rubygems.org/gems/casual_support):

```bash
$ gem install casual_support
```

Then require in your Ruby script:

```ruby
require "casual_support"
```


## Contributing

Run `rake test` to run the tests.  You can also run `rake irb` for an
interactive prompt that pre-loads the project code.


## License

[MIT License](https://opensource.org/licenses/MIT)
