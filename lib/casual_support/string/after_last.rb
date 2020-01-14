class String

  # Searches for the last occurrence of +delimiter+, and returns the
  # portion of the String after that.  If +delimiter+ is not found,
  # returns nil.  Equivalent to <code>split(delimiter, -1).drop(1)[-1]</code>
  # for non-empty delimiters.
  #
  # @example
  #   "/path/to/file".after_last("/")  # == "file"
  #   "/path/to/file".after_last(".")  # == nil
  #   "/path/to/file".after_last("")   # == ""
  #
  # @param delimiter [String]
  # @return [String, nil]
  def after_last(delimiter)
    i = self.rindex(delimiter)
    i && self[i + delimiter.length, self.length]
  end

end
