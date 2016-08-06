class String

  # Searches for the last occurrence of a delimiter, and returns the
  # portion of the string before that.  If the delimiter is not found,
  # returns a copy of the original string.  Equivalent to
  # <code>split(delim, -1)[0..-2].join(delim)</code> for existent
  # delimiters.
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string before the last +delim+
  def before_last(delim)
    self[0, self.rindex(delim) || self.length]
  end

end
