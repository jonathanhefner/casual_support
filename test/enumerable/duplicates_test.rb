require 'test_helper'

class EnumerableDuplicatesTest < Minitest::Test

  def test_duplicates_returns_only_duplicates
    assert_equal [1], [0, 1, 1, 2, 3, 5].duplicates
  end

  def test_duplicates_returns_single_copies
    assert_equal [0, 1], [0, 1, 0, 1, 0, 1].duplicates
  end

  def test_duplicates_preserves_order
    assert_equal [3, 1, 4], [1, 3, 4, 3, 1, 4].duplicates
  end

  def test_duplicates_with_block
    assert_equal %w[x y z], %w[X Y Z x y z].duplicates(&:upcase)
  end

end
