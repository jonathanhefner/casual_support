require 'test_helper'
require 'casual_support/string/first_last'

class StringFromToTest < Minitest::Test

  def test_first_default
    assert_equal 'h', 'hello'.first
  end

  def test_first_positive
    assert_equal 'he', 'hello'.first(2)
  end

  def test_first_zero
    assert_equal '', 'hello'.first(0)
  end

  def test_first_negative
    assert_equal '', 'hello'.first(-1)
  end

  def test_first_all
    s = 'hello'
    s2 = s.first(s.length)
    assert_equal s, s2
    refute_same s, s2
  end


  def test_last_default
    assert_equal 'o', 'hello'.last
  end

  def test_last_positive
    assert_equal 'lo', 'hello'.last(2)
  end

  def test_last_zero
    assert_equal '', 'hello'.last(0)
  end

  def test_last_negative
    assert_equal '', 'hello'.last(-1)
  end

  def test_last_all
    s = 'hello'
    s2 = s.last(s.length)
    assert_equal s, s2
    refute_same s, s2
  end

end
