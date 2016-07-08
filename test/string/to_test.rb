require 'test_helper'

class StringToTest < Minitest::Test

  def test_to_positive
    assert_equal 'hel', 'hello'.to(2)
  end

  def test_to_zero
    assert_equal 'h', 'hello'.to(0)
  end

  def test_to_negative
    assert_equal 'hell', 'hello'.to(-2)
  end

end
