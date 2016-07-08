class String

  # Searches for the last occurrence of a delimiter, and returns the
  # portion of the string before that.  If the delimiter is not found,
  # returns a copy of the original string.  Equivalent to
  # +split(delim, -1)[0..-2].join(delim)+ for existent delimiters.
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string before the last +delim+
  def before_last(delim)
    i = self.rindex(delim)
    i ? self.first(i) : self.dup
  end

end
