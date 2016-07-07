require 'test_helper'
require 'casual_support/string/from_to'

class StringFromToTest < Minitest::Test

  def test_from_positive
    assert_equal 'llo', 'hello'.from(2)
  end

  def test_from_zero
    assert_equal 'hello', 'hello'.from(0)
  end

  def test_from_negative
    assert_equal 'lo', 'hello'.from(-2)
  end


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
