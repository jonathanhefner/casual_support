require 'test_helper'

class ComparableAtMostTest < Minitest::Test

  def test_above_at_most
    assert_equal 100, (101).at_most(100)
  end

  def test_equal_at_most
    assert_equal 100, (100).at_most(100)
  end

  def test_below_at_most
    assert_equal 99, (99).at_most(100)
  end

end
