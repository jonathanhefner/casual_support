module Comparable

  # Enforces a lower bound for the value.
  #
  # @example
  #   -10.at_least(0)  # == 0
  #   99.at_least(0)   # == 99
  #
  # @param limit [Comparable]
  # @return [Comparable]
  def at_least(limit)
    self < limit ? limit : self
  end

end
