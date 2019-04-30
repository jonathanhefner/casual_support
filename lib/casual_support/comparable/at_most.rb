module Comparable

  # Enforces an upper bound for the value.
  #
  # @example
  #   120.at_most(100)  # == 100
  #   90.at_most(100)   # == 90
  #
  # @param limit [Comparable]
  # @return [Comparable]
  def at_most(limit)
    self > limit ? limit : self
  end

  alias_method :cap, :at_most

end
