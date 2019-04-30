class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the String before that.  If the delimiter is not found,
  # returns a copy of the original String.  Equivalent to
  # <code>split(delimiter, 2)[0]</code> for non-empty delimiters.
  #
  # @example
  #  "http://www.example.com".before("://")  # == "http"
  #  "http://www.example.com".before("?")    # == "http://www.example.com"
  #  "http://www.example.com".before("")     # == ""
  #
  # @param delimiter [String]
  # @return [String]
  def before(delimiter)
    self[0, self.index(delimiter) || self.length]
  end

end
