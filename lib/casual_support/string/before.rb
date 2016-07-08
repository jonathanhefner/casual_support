class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the string before that.  If the delimiter is not found,
  # returns a copy of the original string.  Equivalent to
  # +split(delim, 2).first+ for non-empty delimiters.
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string before the first +delim+
  def before(delim)
    self[0, self.index(delim) || self.length]
  end

end
