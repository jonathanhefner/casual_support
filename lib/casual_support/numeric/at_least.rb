class Numeric

  # Enforces a lower bound for a number.
  #
  # @param [Numeric] limit lower bound
  # @return [Numeric] the number constrained by the lower bound
  def at_least(limit)
    self < limit ? limit : self
  end

end
