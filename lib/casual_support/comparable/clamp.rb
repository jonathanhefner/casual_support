module Comparable

  # Clamps the value to a closed interval.
  #
  # @example
  #   -10.clamp(0, 100)  # == 0
  #   50.clamp(0, 100)   # == 50
  #   120.clamp(0, 100)  # == 100
  #
  # See also https://bugs.ruby-lang.org/issues/10594
  #
  # @param low [Comparable]
  # @param high [Comparable]
  # @return [Comparable]
  def clamp(low, high)
    return low if self < low
    return high if self > high
    self
  end

end
