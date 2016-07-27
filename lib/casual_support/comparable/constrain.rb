module Comparable

  # Constrains the value to a closed interval.
  #
  # @param [Comparable] low lower bound
  # @param [Comparable] high upper bound
  # @return [Comparable] value constrained to the bounds
  def constrain(low, high)
    return low if self < low
    return high if self > high
    self
  end

  alias_method :clamp, :constrain

end
