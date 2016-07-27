require 'test_helper'

class ComparableConstrainTest < Minitest::Test

  def test_constrain_below
    assert_equal 100, (99).constrain(100, 110)
  end

  def test_constrain_within
    assert_equal 100, (100).constrain(100, 110)
    assert_equal 105, (105).constrain(100, 110)
    assert_equal 110, (110).constrain(100, 110)
  end

  def test_constrain_above
    assert_equal 110, (111).constrain(100, 110)
  end

end
