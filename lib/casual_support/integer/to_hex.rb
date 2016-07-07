class Integer

  # Converts integer to a zero-padded lower-case hexadecimal string.
  # If the length of the raw hexadecimal string exceeds the desired
  # width, the string will be returned unaltered (without padding or
  # truncation).
  #
  # @param [Integer] width desired width of the zero-padded string
  # @return [String] hexadecimal string
  def to_hex(width = nil)
    h = self.to_s(16)
    width ? h.rjust(width, '0'.freeze) : h
  end

end
