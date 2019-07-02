## 3.0.2

* Add `Date#to_hms` dummy method
* Loosen Active Support version constraint
* Exclude benchmarks from gem


## 3.0.1

* Loosen Active Support version constraint


## 3.0.0

* [BREAKING] Remove block param from `Enumerable#duplicates`
* [BREAKING] Remove `Comparable#clamp`.  (Native in Ruby 2.4.)
* [BREAKING] Remove `String#lchomp`.  (Native in Ruby 2.5 as
  `String#delete_prefix`.)
* Add `Numeric#sign`
* Add `Boolean#to_z`
* Add `Hash#displace`
* Add `Struct#assign_attributes`
* Add `Struct.from_h`


## 2.0.0

* [BREAKING] Rename `Comparable#constrain` to `Comparable#clamp`
* [BREAKING] Rename `Hash#set!` to `Hash#put!`
* [BREAKING] Change `String#after` and `String#after_last` to return
  `nil` if delimiter is not found
* Add `String#between`
* Add `String#prefix`
* Add `String#suffix`
* Add `String#lchomp`
* Move `Numeric#at_least`, `Numeric#at_most`, and `Numeric#constrain` to
  Comparable


## 1.0.0

* Initial release
