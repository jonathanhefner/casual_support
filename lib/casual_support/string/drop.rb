class String

  # Drops characters from the beginning of a string, and returns the
  # remainder.  If the number of characters to drop is greater than the
  # length of the string, an empty string is returned.
  #
  # @param [Integer] n number of characters to drop
  # @return [String] string of remaining characters
  def drop(n)
    return self.dup if n <= 0
    self[n, self.length] || ''
  end

end
