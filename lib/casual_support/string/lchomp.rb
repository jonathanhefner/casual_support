class String

  # Removes a given prefix from the beginning of the string.  If the
  # string does not begin with the given prefix, a duplicate of the
  # string is returned.
  #
  # Similar to +String#chomp+, but operates on the left side (beginning)
  # of the string.  See also https://bugs.ruby-lang.org/issues/10574
  #
  # @example
  #   "www.example.com".lchomp("www.")  # == "example.com"
  #   "example.com".lchomp("www.")      # == "example.com"
  #
  # @param prefix [String]
  # @return [String]
  def lchomp(prefix)
    self.start_with?(prefix) ? self[prefix.length, self.length] : self.dup
  end

end
