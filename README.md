# casual_support

Utility methods as extensions to Ruby core objects, a la Active Support.

Also a nod to the epic [Facets] library, which has a vast quantity and
wide variety of utility functions.  casual_support distinguishes itself
in a few ways:

- Focus on fast implementations.  See the benchmarks directory for
  performance comparisons with typical and alternative implementations.
- Low memory footprint without requiring cherry-picking.  Cherry-picking
  is still possible though!
- Intended to be used alongside Active Support.  Does not clash with
  Active Support methods, and overrides only a few to provide more
  performant implementations.

[Facets]: https://github.com/rubyworks/facets


## Utility Methods

- Boolean
  - [to_z](http://www.rubydoc.info/gems/casual_support/TrueClass%3Ato_z)
- Comparable
  - [at_least](http://www.rubydoc.info/gems/casual_support/Comparable%3Aat_least)
  - [at_most](http://www.rubydoc.info/gems/casual_support/Comparable%3Aat_most)
- Date
  - [to_ymd](http://www.rubydoc.info/gems/casual_support/Date%3Ato_ymd)
- Enumerable
  - [duplicates](http://www.rubydoc.info/gems/casual_support/Enumerable%3Aduplicates)
  - [index_to](http://www.rubydoc.info/gems/casual_support/Enumerable%3Aindex_to)
- Hash
  - [put!](http://www.rubydoc.info/gems/casual_support/Hash%3Aput%21)
- Integer
  - [to_hex](http://www.rubydoc.info/gems/casual_support/Integer%3Ato_hex)
- Numeric
  - [sign](http://www.rubydoc.info/gems/casual_support/Numeric%3Asign)
- String
  - [after](http://www.rubydoc.info/gems/casual_support/String%3Aafter)
  - [after_last](http://www.rubydoc.info/gems/casual_support/String%3Aafter_last)
  - [before](http://www.rubydoc.info/gems/casual_support/String%3Abefore)
  - [before_last](http://www.rubydoc.info/gems/casual_support/String%3Abefore_last)
  - [between](http://www.rubydoc.info/gems/casual_support/String%3Abetween)
  - [drop](http://www.rubydoc.info/gems/casual_support/String%3Adrop)
  - [first](http://www.rubydoc.info/gems/casual_support/String%3Afirst)
  - [from](http://www.rubydoc.info/gems/casual_support/String%3Afrom)
  - [last](http://www.rubydoc.info/gems/casual_support/String%3Alast)
  - [prefix](http://www.rubydoc.info/gems/casual_support/String%3Aprefix)
  - [suffix](http://www.rubydoc.info/gems/casual_support/String%3Asuffix)
  - [to](http://www.rubydoc.info/gems/casual_support/String%3Ato)
- Time
  - [to_hms](http://www.rubydoc.info/gems/casual_support/Time%3Ato_hms)
  - [to_ymd](http://www.rubydoc.info/gems/casual_support/Time%3Ato_ymd)


## Installation

    $ gem install casual_support


## Development

Run `rake test` to run the tests.  You can also run `rake irb` for an
interactive prompt that pre-loads the project code.


## License

[MIT License](http://opensource.org/licenses/MIT)
