class String

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the string before that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim).first
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string before the first +delim+
  def before(delim)
    i = self.index(delim)
    i ? self.first(i) : self
  end

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

  # Searches for the first occurrence of a delimiter, and returns the
  # portion of the string after that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim, 2).last
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string after the first +delim+
  def after(delim)
    i = self.index(delim)
    i ? self.drop(i + delim.length) : self
  end

  # Searches for the last occurrence of a delimiter, and returns the
  # portion of the string after that.  If the delimiter is not found,
  # returns the original string.
  #
  # Semantically equivalent to:
  #   split(delim).last
  #
  # @param [String] delim delimiter to search for
  # @return [String] portion of the string after the last +delim+
  def after_last(delim)
    i = self.rindex(delim)
    i ? self.drop(i + delim.length) : self
  end

end
