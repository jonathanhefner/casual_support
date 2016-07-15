require 'test_helper'

class NumericAtLeastTest < Minitest::Test

  def test_above_at_least
    assert_equal 101, (101).at_least(100)
  end

  def test_equal_at_least
    assert_equal 100, (100).at_least(100)
  end

  def test_below_at_least
    assert_equal 100, (99).at_least(100)
  end

end
