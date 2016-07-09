require 'test_helper'

class StringFromTest < Minitest::Test

  S = 'hello'

  def test_from_positive
    assert_equal (S[-2] + S[-1]), S.from(S.length - 2)
  end

  def test_from_end
    assert_equal '', S.from(S.length)
  end

  def test_from_large_positive
    assert_nil S.from(S.length + 1)
  end

  def test_from_huge_positive
    assert_nil S.from(S.length * 10)
  end

  def test_from_zero
    assert_equal_not_same S, S.from(0)
  end

  def test_from_negative
    assert_equal (S[-2] + S[-1]), S.from(-2)
  end

  def test_from_large_negative
    assert_nil S.from(S.length * -1 - 1)
  end

  def test_from_huge_negative
    assert_nil S.from(S.length * -10)
  end

end
