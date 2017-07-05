class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the String after that.  If the delimiter is not found,
  # returns nil.  Equivalent to +split(delimiter, 2)[1]+ for non-empty
  # delimiters.
  #
  # @example
  #  "http://www.example.com".after("://")  # == "www.example.com"
  #  "http://www.example.com".after("?")    # == nil
  #  "http://www.example.com".after("")     # == "http://www.example.com"
  #
  # @param delimiter [String]
  # @return [String, nil]
  def after(delimiter)
    i = self.index(delimiter)
    i && self[i + delimiter.length, self.length]
  end

end
