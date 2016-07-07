require 'test_helper'
require 'casual_support/numeric/constrain'

class NumericConstrainTest < Minitest::Test

  def test_constrain_below
    assert_equal (99).constrain(100, 110), 100
  end

  def test_constrain_within
    assert_equal (100).constrain(100, 110), 100
    assert_equal (105).constrain(100, 110), 105
    assert_equal (110).constrain(100, 110), 110
  end

  def test_constrain_above
    assert_equal (111).constrain(100, 110), 110
  end

end
