class String

  # Prepends +affix+ to the String only if the String does not already
  # start with +affix+.  Otherwise returns a duplicate of the String.
  # Equivalent to +gsub(/^(?!affix)/, "affix")+.
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
