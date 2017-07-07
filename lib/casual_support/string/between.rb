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
    if i
      i += open.length
      j = self.index(close, i)
      self[i, j - i] if j
    end
  end

end
