module Enumerable

  # Returns the first-appearing duplicate of each element, preserving
  # order of appearance.
  #
  # @example
  #   %w[a a b c c b a d].duplicates  # == ["a", "c", "b"]
  #
  # @return [Enumerable]
  def duplicates
    seen = Hash.new(0)
    self.select{|element| (seen[element] += 1) == 2 }
  end

end
