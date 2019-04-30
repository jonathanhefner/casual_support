class Numeric

  # Returns the sign of the number expressed as +-1+, +0+, or +1+.
  #
  # @example
  #   -4.sign  # == -1
  #   0.sign   # == 0
  #   16.sign  # == 1
  #
  # @return [Integer]
  def sign
    self <=> 0
  end

end
