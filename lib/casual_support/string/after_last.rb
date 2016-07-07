class String

  # Searches for the last occurrence of a delimiter, and returns the
  # portion of the string after that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim).last
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string after the last +delim+
  def after_last(delim)
    i = self.rindex(delim)
    i ? self.drop(i + delim.length) : self
  end

end
