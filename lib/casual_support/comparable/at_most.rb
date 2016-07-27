module Comparable

  # Enforces an upper bound for the value.
  #
  # @param [Comparable] limit upper bound
  # @return [Comparable] value constrained by the upper bound
  def at_most(limit)
    self > limit ? limit : self
  end

  alias_method :cap, :at_most

end
