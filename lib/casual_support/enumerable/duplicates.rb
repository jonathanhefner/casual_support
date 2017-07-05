module Enumerable

  # Returns the first duplicate of each element, preserving order of
  # appearance.  If a block is given, it will use the return
  # value of the block for duplicate detection.
  #
  # @example
  #   %w[a a b c c b a d].duplicates           # == ["a", "c", "b"]
  #   %w[a b c ab cd ef].duplicates(&:length)  # == ["b", "cd"]
  #
  # @yieldparam element ['E] element from +Enumerable+
  # @yieldreturn value used for duplicate detection
  # @return [Enumerable<'E>]
  def duplicates
    seen = Hash.new(0)
    if block_given?
      self.select{|elem| (seen[yield(elem)] += 1) == 2 }
    else
      self.select{|elem| (seen[elem] += 1) == 2 }
    end
  end

end
