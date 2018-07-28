## 3.0.1

* Loosened Active Support version constraint.


## 3.0.0

* Added `Numeric#sign`.
* Added `Boolean#to_z`.
* Added `Hash#displace`.
* Added `Struct#assign_attributes`.
* Added `Struct.from_h`.
* [BREAKING] Removed block param from `Enumerable#duplicates`.
* [BREAKING] Removed `Comparable#clamp`.  Native in Ruby 2.4.
* [BREAKING] Removed `String#lchomp`.  Native in Ruby 2.5 as
  `String#delete_prefix`.


## 2.0.0

* Added `String#between`.
* Added `String#prefix`.
* Added `String#suffix`.
* Added `String#lchomp`.
* Abstracted `Numeric#at_least`, `Numeric#at_most`, and
  `Numeric#constrain` methods to the `Comparable` module.
* [BREAKING] Renamed `Comparable#constrain` to `Comparable#clamp`.
* [BREAKING] Renamed `Hash#set!` to `Hash#put!`.
* [BREAKING] Changed `String#after` and `String#after_last` to return
  nil if delimiter is not found.


## 1.0.0

* Initial release
