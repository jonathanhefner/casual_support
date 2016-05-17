module Enumerable

  # Returns the first duplicate of each element, preserving order of
  # appearance.  If a block is given, it will use the return
  # value of the block for element comparison.
  #
  # Examples:
  #   %w[a a b c d c b a].duplicates == %w[a c b]
  #   %w[A a B b].duplicates(&:upcase) == %w[a b]
  #
  # @yield [elem] computes an indentifying value
  # @yieldparam elem element from the +Enumerable+
  # @yieldreturn value used for duplicate comparison
  # @return [Enumerable] duplicate elements of the +Enumerable+
  def duplicates
    seen = Hash.new(0)
    if block_given?
      self.select{|elem| (seen[yield(elem)] += 1) == 2 }
    else
      self.select{|elem| (seen[elem] += 1) == 2 }
    end
  end

end
