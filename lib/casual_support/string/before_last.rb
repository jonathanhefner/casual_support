class String

  # Searches for the last occurrence of a delimiter, and returns the
  # portion of the String before that.  If the delimiter is not found,
  # returns a copy of the original String.  Equivalent to
  # +split(delimiter, -1)[0..-2].join(delimiter)+ for existent
  # delimiters.
  #
  # @example
  #   "/path/to/file".before_last("/")  # == "/path/to"
  #   "/path/to/file".before_last(".")  # == "/path/to/file"
  #   "/path/to/file".before_last("")   # == "/path/to/file"
  #
  # @param delimiter [String]
  # @return [String]
  def before_last(delimiter)
    self[0, self.rindex(delimiter) || self.length]
  end

end
