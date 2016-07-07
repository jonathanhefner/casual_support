class Numeric

  # Enforces an upper bound for a number.
  #
  # @param [Numeric] limit upper bound
  # @return [Numeric] the number constrained by the upper bound
  def at_most(limit)
    self > limit ? limit : self
  end

  alias_method :cap, :at_most

end
