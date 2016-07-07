class String

  # Searches for the last occurrence of a delimiter, and returns the
  # portion of the string before that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim)[0..-2].join(delim)
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string before the last +delim+
  def before_last(delim)
    i = self.rindex(delim)
    i ? self.first(i) : self
  end

end
