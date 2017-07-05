class String

  # Appends a suffix to the String only if the String does not already
  # end with that suffix.  Otherwise returns a duplicate of the String.
  # Equivalent to +gsub(/(?<!affix)$/, "affix")+.
  #
  # @example
  #   "example".suffix(".com")      # == "example.com"
  #   "example.com".suffix(".com")  # == "example.com"
  #
  # @param affix [String]
  # @return [String]
  def suffix(affix)
    self.end_with?(affix) ? self.dup : "#{self}#{affix}"
  end

end
