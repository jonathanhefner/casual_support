module Comparable

  # Enforces a lower bound for the value.
  #
  # @param [Comparable] limit lower bound
  # @return [Comparable] value constrained by the lower bound
  def at_least(limit)
    self < limit ? limit : self
  end

end
