class String

  # Searches for the first occurrence of +delimiter+, and returns the
  # portion of the String after that.  If +delimiter+ is not found,
  # returns nil.  Equivalent to <code>split(delimiter, 2).drop(1)[-1]</code>
  # for non-empty delimiters.
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
