# casual_support [![Build Status](https://travis-ci.org/jonathanhefner/casual_support.svg?branch=master)](https://travis-ci.org/jonathanhefner/casual_support)

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
  - [#to_z](https://www.rubydoc.info/gems/casual_support/TrueClass:to_z)
- [Comparable](https://www.rubydoc.info/gems/casual_support/Comparable)
  - [#at_least](https://www.rubydoc.info/gems/casual_support/Comparable:at_least)
  - [#at_most](https://www.rubydoc.info/gems/casual_support/Comparable:at_most)
- [Date](https://www.rubydoc.info/gems/casual_support/Date)
  - [#to_hms](https://www.rubydoc.info/gems/casual_support/Date:to_hms)
  - [#to_ymd](https://www.rubydoc.info/gems/casual_support/Date:to_ymd)
- [Enumerable](https://www.rubydoc.info/gems/casual_support/Enumerable)
  - [#duplicates](https://www.rubydoc.info/gems/casual_support/Enumerable:duplicates)
  - [#index_to](https://www.rubydoc.info/gems/casual_support/Enumerable:index_to)
- [Hash](https://www.rubydoc.info/gems/casual_support/Hash)
  - [#displace](https://www.rubydoc.info/gems/casual_support/Hash:displace)
  - [#put!](https://www.rubydoc.info/gems/casual_support/Hash:put%21)
- [Integer](https://www.rubydoc.info/gems/casual_support/Integer)
  - [#to_hex](https://www.rubydoc.info/gems/casual_support/Integer:to_hex)
- [Numeric](https://www.rubydoc.info/gems/casual_support/Numeric)
  - [#sign](https://www.rubydoc.info/gems/casual_support/Numeric:sign)
- [String](https://www.rubydoc.info/gems/casual_support/String)
  - [#after](https://www.rubydoc.info/gems/casual_support/String:after)
  - [#after_last](https://www.rubydoc.info/gems/casual_support/String:after_last)
  - [#before](https://www.rubydoc.info/gems/casual_support/String:before)
  - [#before_last](https://www.rubydoc.info/gems/casual_support/String:before_last)
  - [#between](https://www.rubydoc.info/gems/casual_support/String:between)
  - [#drop](https://www.rubydoc.info/gems/casual_support/String:drop)
  - [#from](https://www.rubydoc.info/gems/casual_support/String:from)
  - [#prefix](https://www.rubydoc.info/gems/casual_support/String:prefix)
  - [#suffix](https://www.rubydoc.info/gems/casual_support/String:suffix)
  - [#to](https://www.rubydoc.info/gems/casual_support/String:to)
- [Struct](https://www.rubydoc.info/gems/casual_support/Struct)
  - [#assign_attributes](https://www.rubydoc.info/gems/casual_support/Struct:assign_attributes)
  - [.from_h](https://www.rubydoc.info/gems/casual_support/Struct.from_h)
- [Time](https://www.rubydoc.info/gems/casual_support/Time)
  - [#to_hms](https://www.rubydoc.info/gems/casual_support/Time:to_hms)
  - [#to_ymd](https://www.rubydoc.info/gems/casual_support/Time:to_ymd)


## Installation

Install the [gem](https://rubygems.org/gems/casual_support):

```bash
$ gem install casual_support
```

Then require in your Ruby code:

```ruby
require "casual_support"
```


## Contributing

Run `rake test` to run the tests.


## License

[MIT License](https://opensource.org/licenses/MIT)
