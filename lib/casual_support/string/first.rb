require "active_support/core_ext/string/access"

class String

  remove_method :first

  # Returns the first +limit+ characters from the beginning of the
  # String.
  #
  # This method replaces Active Support's +String#first+, except that it
  # returns an empty string when given a negative +limit+ argument,
  # whereas Active Support's +String#first+ removes +limit.abs+
  # characters from the end of the String.  Returning an empty string
  # makes more sense if you interpret +first+ as "keep upto +limit+
  # characters."  (At most, a negative +limit+ should *keep* that many
  # characters from the end of the String, rather than *remove* that
  # many characters, but returning an empty string is a good
  # conservative choice.)  This method is also faster.
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
