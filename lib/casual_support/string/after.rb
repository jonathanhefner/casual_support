class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the string after that.  If the delimiter is not found,
  # returns an empty string.  Equivalent to +split(delim, 2)[1] || ''+
  # for non-empty delimiters.
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string after the first +delim+
  def after(delim)
    i = self.index(delim)
    i ? self[i + delim.length, self.length] : ''
  end

end
