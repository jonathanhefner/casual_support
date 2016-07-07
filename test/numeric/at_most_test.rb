require 'test_helper'
require 'casual_support/numeric/at_most'

class NumericAtMostTest < Minitest::Test

  def test_above_at_most
    assert_equal (101).at_most(100), 100
  end

  def test_equal_at_most
    assert_equal (100).at_most(100), 100
  end

  def test_below_at_most
    assert_equal (99).at_most(100), 99
  end

end
