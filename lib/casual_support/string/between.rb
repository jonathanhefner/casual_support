class String

  # Returns the portion of the String between the first occurrences of
  # an +open+ delimiter and a +close+ delimiter.  If either delimiter is
  # not found, returns nil.
  #
  # @example
  #   "i <b><3</b> ruby".between("<b>", "</b>")  # == "<3"
  #   "i <b><3<b> ruby".between("<b>", "</b>")   # == nil
  #
  # @param open [String]
  # @param close [String]
  # @return [String, nil]
  def between(open, close)
    i = self.index(open)
    if i
      i += open.length
      j = self.index(close, i)
      self[i, j - i] if j
    end
  end

end
