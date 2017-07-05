class String

  # Prepends a prefix to the String only if the String does not already
  # start with that prefix.  Otherwise returns a duplicate of the
  # String.  Equivalent to +gsub(/^(?!prefix)/, "prefix")+.
  #
  # @example
  #   "example.com".prefix("www.")      # == "www.example.com"
  #   "www.example.com".prefix("www.")  # == "www.example.com"
  #
  # @param affix [String]
  # @return [String]
  def prefix(affix)
    self.start_with?(affix) ? self.dup : "#{affix}#{self}"
  end

end
