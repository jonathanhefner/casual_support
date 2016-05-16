class Numeric

  # Constrains a number to a closed interval.
  #
  # @param [Numeric] low lower bound
  # @param [Numeric] high upper bound
  # @return [Numeric] the number constrained to the bounds
  def constrain(low, high)
    return low if self < low
    return high if self > high
    self
  end

  alias_method :clamp, :constrain

end
