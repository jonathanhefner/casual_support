require "active_support/core_ext/string/access"

class String

  remove_method :last

  # Returns the last +limit+ characters from the end of the String.
  #
  # This method replaces Active Support's +String#last+, except that it
  # returns an empty string when given a negative +limit+ argument,
  # whereas Active Support's +String#last+ removes +limit.abs+
  # characters from the beginning of the String.  Returning an empty
  # string makes more sense if you interpret +last+ as "keep upto
  # +limit+ characters."  (At most, a negative +limit+ should *keep*
  # that many characters from the beginning of the String, rather than
  # *remove* that many characters, but returning an empty string is a
  # good conservative choice.)  This method is also faster.
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
