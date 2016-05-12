class Numeric

  # Enforces a lower bound for a number.
  #
  # @param [Numeric] limit lower bound
  # @return [Numeric] the number constrained by the lower bound
  def at_least(limit)
    self < limit ? limit : self
  end

  # Enforces an upper bound for a number.
  #
  # @param [Numeric] limit upper bound
  # @return [Numeric] the number constrained by the upper bound
  def at_most(limit)
    self > limit ? limit : self
  end

  alias_method :cap, :at_most

end
