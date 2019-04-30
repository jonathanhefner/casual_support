require 'active_support/core_ext/string/access'

class String

  remove_method :to

  # Returns the substring from the start of the String, spanning through
  # a given position.
  #
  # This method replaces Active Support's +String#to+.  It is faster.
  #
  # @example
  #   "abcdef".to(0)  # == "a"
  #   "abcdef".to(2)  # == "abc"
  #   "abcdef".to(5)  # == "abcdef"
  #   "abcdef".to(6)  # == "abcdef"
  #
  # @param position [Integer]
  # @return [String]
  def to(position)
    position += self.length if position < 0
    self[0, position + 1] || ''
  end

end
