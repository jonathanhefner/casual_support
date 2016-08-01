class String

  # Prepends a prefix to the string if the string does not already start
  # with that prefix.  Otherwise returns a duplicate of the string.
  # Equivalent to +gsub(/^(?!fix)/, 'fix')+.
  #
  # @param [String] fix prefix to prepend
  # @return [String] prefixed string
  def prefix(fix)
    self.start_with?(fix) ? self.dup : "#{fix}#{self}"
  end

end
