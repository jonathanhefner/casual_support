class Integer

  # Converts integer to a zero-padded lower-case hexadecimal string.
  # If the length of the raw hexadecimal string exceeds the desired
  # width, the string will be returned unaltered (without padding or
  # truncation).
  #
  # Without the need for zero-padding, this method is ~7% slower than
  # just +to_s(16)+.  However, when zero-padding is required, it is
  # ~230% faster than +sprintf("%0#{width}x", self)+, and ~30% faster
  # than +sprintf(FIXED_FORMAT_STRING, self)+.
  #
  # @param [Integer] width desired width of the zero-padded string
  # @return [String] hexadecimal string
  def to_hex(width = nil)
    h = self.to_s(16)
    width ? h.rjust(width, '0'.freeze) : h
  end

end
