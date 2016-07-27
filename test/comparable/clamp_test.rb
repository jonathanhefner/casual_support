require 'test_helper'

class ComparableClampTest < Minitest::Test

  def test_clamp_below
    assert_equal 100, (99).clamp(100, 110)
  end

  def test_clamp_within
    assert_equal 100, (100).clamp(100, 110)
    assert_equal 105, (105).clamp(100, 110)
    assert_equal 110, (110).clamp(100, 110)
  end

  def test_clamp_above
    assert_equal 110, (111).clamp(100, 110)
  end

end
