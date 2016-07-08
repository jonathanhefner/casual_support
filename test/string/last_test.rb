require 'test_helper'

class StringLastTest < Minitest::Test

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
