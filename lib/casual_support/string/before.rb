class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the string before that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim).first
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string before the first +delim+
  def before(delim)
    i = self.index(delim)
    i ? self.first(i) : self
  end

end
