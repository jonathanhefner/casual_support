require 'test_helper'
require 'casual_support/enumerable/duplicates'

class EnumerableDuplicatesTest < Minitest::Test

  def test_duplicates_returns_only_duplicates
    assert_equal [0, 1, 1, 2, 3, 5].duplicates, [1]
  end

  def test_duplicates_returns_single_copies
    assert_equal [0, 1, 0, 1, 0, 1].duplicates, [0, 1]
  end

  def test_duplicates_preserves_order
    assert_equal [1, 3, 4, 3, 1, 4].duplicates, [3, 1, 4]
  end

  def test_duplicates_with_block
    assert_equal %w[X Y Z x y z].duplicates(&:upcase), %w[x y z]
  end

end
