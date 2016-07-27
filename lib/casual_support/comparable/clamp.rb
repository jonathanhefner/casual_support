module Comparable

  # Clamps the value to a closed interval.
  #
  # Also see https://bugs.ruby-lang.org/issues/10594
  #
  # @param [Comparable] low lower bound
  # @param [Comparable] high upper bound
  # @return [Comparable] value constrained to the bounds
  def clamp(low, high)
    return low if self < low
    return high if self > high
    self
  end

end
