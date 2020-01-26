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
  Active Support methods.

[Facets]: https://github.com/rubyworks/facets


## Utility Methods

- [Date](https://www.rubydoc.info/gems/casual_support/Date)
  - [#to_hms](https://www.rubydoc.info/gems/casual_support/Date:to_hms)
  - [#to_ymd](https://www.rubydoc.info/gems/casual_support/Date:to_ymd)
- [Enumerable](https://www.rubydoc.info/gems/casual_support/Enumerable)
  - [#duplicates](https://www.rubydoc.info/gems/casual_support/Enumerable:duplicates)
  - [#index_to](https://www.rubydoc.info/gems/casual_support/Enumerable:index_to)
- [Hash](https://www.rubydoc.info/gems/casual_support/Hash)
  - [#displace](https://www.rubydoc.info/gems/casual_support/Hash:displace)
  - [#put!](https://www.rubydoc.info/gems/casual_support/Hash:put%21)
- [String](https://www.rubydoc.info/gems/casual_support/String)
  - [#after](https://www.rubydoc.info/gems/casual_support/String:after)
  - [#after_last](https://www.rubydoc.info/gems/casual_support/String:after_last)
  - [#before](https://www.rubydoc.info/gems/casual_support/String:before)
  - [#before_last](https://www.rubydoc.info/gems/casual_support/String:before_last)
  - [#between](https://www.rubydoc.info/gems/casual_support/String:between)
  - [#prefix](https://www.rubydoc.info/gems/casual_support/String:prefix)
  - [#suffix](https://www.rubydoc.info/gems/casual_support/String:suffix)
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
