class String

  # Appends a suffix to the string if the string does not already end
  # with that suffix.  Otherwise returns a duplicate of the string.
  # Equivalent to +gsub(/(?<!fix)$/, 'fix')+.
  #
  # @param [String] fix suffix to append
  # @return [String] suffixed string
  def suffix(fix)
    self.end_with?(fix) ? self.dup : "#{self}#{fix}"
  end

end
