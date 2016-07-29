class String
  
  # Returns the portion of the string between the first occurrences of
  # an opening and a closing delimiter.  If either delimiter is not
  # found, returns nil.
  #
  # @param [String] open opening delimiter
  # @param [String] close closing delimiter
  # @return [String] portion of the string between the delimiters
  def between(open, close)
    i = self.index(open)
    j = self.index(close, i + 1) if i
    j && self[i + 1, j - i - 1]
  end

end
