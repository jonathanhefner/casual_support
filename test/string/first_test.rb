require 'test_helper'

class StringFirstTest < Minitest::Test

  S = 'hello'

  def test_first_default
    assert_equal S[0], S.first
  end

  def test_first_positive
    assert_equal (S[0] + S[1]), S.first(2)
  end

  def test_first_all
    assert_equal_not_same S, S.first(S.length)
  end

  def test_first_large_positive
    assert_equal_not_same S, S.first(S.length + 1)
  end

  def test_first_huge_positive
    assert_equal_not_same S, S.first(S.length * 10)
  end

  def test_first_zero
    assert_equal '', S.first(0)
  end

  def test_first_negative
    assert_equal '', S.first(-1)
  end

  def test_first_large_negative
    assert_equal '', S.first(S.length * -1 - 1)
  end

  def test_first_huge_negative
    assert_equal '', S.first(S.length * -10)
  end

end
