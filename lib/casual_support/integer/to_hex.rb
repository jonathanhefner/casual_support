class Integer

  # Formats the Integer as a zero-padded lower-case hexadecimal string.
  # If the length of the raw hexadecimal string exceeds the desired
  # width, the string will be returned as-is (without padding or
  # truncation).
  #
  # @example
  #   250.to_hex     # == "fa"
  #   250.to_hex(4)  # == "00fa"
  #   250.to_hex(1)  # == "fa"
  #
  # @param width [Integer]
  # @return [String]
  def to_hex(width = 0)
    width > 1 ? self.to_s(16).rjust(width, "0".freeze) : self.to_s(16)
  end

end
