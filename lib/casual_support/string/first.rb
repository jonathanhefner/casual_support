require "active_support/core_ext/string/access"

class String

  remove_method :first

  # Returns the first +limit+ characters from the beginning of the
  # String.
  #
  # This method replaces Active Support's +String#first+.  However, it
  # returns an empty string when given a negative +limit+, whereas
  # Active Support 6.0 and previous remove +limit.abs+ characters from
  # the end of the String.  Returning an empty string is more intuitive
  # behavior if +first+ is interpreted as "keep up to +limit+
  # characters."  (At most, a negative +limit+ should *keep* +limit.abs+
  # characters from the end of the String, instead of *remove* that many
  # characters, but returning an empty string is a conservative
  # compromise.)  This method is also faster than Active Support's
  # implementation.
  #
  # @example
  #   "abcdef".first(0)   # == ""
  #   "abcdef".first(3)   # == "abc"
  #   "abcdef".first(6)   # == "abcdef"
  #   "abcdef".first(7)   # == "abcdef"
  #   "abcdef".first(-1)  # == ""
  #
  # @param limit [Integer]
  # @return [String]
  def first(limit = 1)
    self[0, limit] || ""
  end

end
