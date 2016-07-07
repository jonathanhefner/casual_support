require 'test_helper'
require 'casual_support/string/from'

class StringFromTest < Minitest::Test

  def test_from_positive
    assert_equal 'llo', 'hello'.from(2)
  end

  def test_from_zero
    assert_equal 'hello', 'hello'.from(0)
  end

  def test_from_negative
    assert_equal 'lo', 'hello'.from(-2)
  end

end
