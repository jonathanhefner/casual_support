class String

  # Drops characters from the beginning of the String, and returns the
  # remainder.  If the number of characters to drop is greater than the
  # length of the String, an empty string is returned.
  #
  # @example
  #   "abcdef".drop(0)  # == "abcdef"
  #   "abcdef".drop(3)  # == "def"
  #   "abcdef".drop(6)  # == ""
  #   "abcdef".drop(7)  # == ""
  #
  # @param n [Integer]
  # @return [String]
  def drop(n)
    return self.dup if n <= 0
    self[n, self.length] || ""
  end

end
