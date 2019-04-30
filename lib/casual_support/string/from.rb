require "active_support/core_ext/string/access"

class String

  remove_method :from

  # Returns the substring starting at a given position, spanning through
  # the end of the String.
  #
  # This method replaces Active Support's +String#from+.  It is faster.
  #
  # @example
  #   "abcdef".from(0)  # == "abcdef"
  #   "abcdef".from(3)  # == "def"
  #   "abcdef".from(6)  # == ""
  #   "abcdef".from(7)  # == ""
  #
  # @param position [Integer]
  # @return [String]
  def from(position)
    self[position, self.length]
  end

end
