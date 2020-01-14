class String

  # Searches for the last occurrence of +delimiter+, and returns the
  # portion of the String before that.  If +delimiter+ is not found,
  # returns a copy of the original String.  Equivalent to
  # <code>split(delimiter, -1)[0...-1].join(delimiter)</code> for
  # existent delimiters.
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
