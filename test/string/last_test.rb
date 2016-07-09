require 'test_helper'

class StringLastTest < Minitest::Test

  S = 'hello'

  def test_last_default
    assert_equal S[-1], S.last
  end

  def test_last_positive
    assert_equal (S[-2] + S[-1]), S.last(2)
  end

  def test_last_all
    assert_equal_not_same S, S.last(S.length)
  end

  def test_last_large_positive
    assert_equal_not_same S, S.last(S.length + 1)
  end

  def test_last_huge_positive
    assert_equal_not_same S, S.last(S.length * 10)
  end

  def test_last_zero
    assert_equal '', S.last(0)
  end

  def test_last_negative
    assert_equal '', S.last(-1)
  end

  def test_last_large_negative
    assert_equal '', S.last(S.length * -1 - 1)
  end

  def test_last_huge_negative
    assert_equal '', S.last(S.length * -10)
  end

end
