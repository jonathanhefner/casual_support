class String

  # Removes the beginning of the string if that portion matches the
  # argument.  Otherwise returns a duplicate of the string.  Like
  # String#chomp, but operates on the left side (beginning) of the
  # string.
  #
  # Also see https://bugs.ruby-lang.org/issues/10574
  #
  # @param [String] head substring to match and remove
  # @return [String] chomped string
  def lchomp(head)
    self.start_with?(head) ? self[head.length, self.length] : self.dup
  end

end
