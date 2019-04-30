require "active_support/core_ext/string/access"

class String

  remove_method :last

  # Returns the last +limit+ characters from the end of the String.
  #
  # This method replaces Active Support's +String#last+.  However, it
  # returns an empty string when given a negative +limit+, whereas
  # Active Support 6.0 and previous remove +limit.abs+ characters from
  # the beginning of the String.  Returning an empty string is more
  # intuitive behavior if +last+ is interpreted as "keep up to +limit+
  # characters."  (At most, a negative +limit+ should *keep* +limit.abs+
  # characters from the beginning of the String, instead of *remove*
  # that many characters, but returning an empty string is a
  # conservative compromise.)  This method is also faster than Active
  # Support's implementation.
  #
  # @example
  #   "abcdef".last(0)   # == ""
  #   "abcdef".last(3)   # == "def"
  #   "abcdef".last(6)   # == "abcdef"
  #   "abcdef".last(7)   # == "abcdef"
  #   "abcdef".last(-1)  # == ""
  #
  # @param limit [Integer]
  # @return [String]
  def last(limit = 1)
    limit < 0 ? "" : (self[-limit, limit] || self.dup)
  end

end
