class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the string after that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim, 2).last
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string after the first +delim+
  def after(delim)
    i = self.index(delim)
    i ? self.drop(i + delim.length) : self
  end

end
