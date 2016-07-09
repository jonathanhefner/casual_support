require 'test_helper'

class StringToTest < Minitest::Test

  S = 'hello'

  def test_to_positive
    assert_equal (S[0] + S[1]), S.to(1)
  end

  def test_to_end
    assert_equal_not_same S, S.to(S.length - 1)
  end

  def test_to_large_positive
    assert_equal_not_same S, S.to(S.length)
  end

  def test_to_huge_positive
    assert_equal_not_same S, S.to(S.length * 10)
  end

  def test_to_zero
    assert_equal S[0], S.to(0)
  end

  def test_to_negative
    assert_equal (S[0] + S[1]), S.to(S.length * -1 + 1)
  end

  def test_to_beginning
    assert_equal '', S.to(S.length * -1 - 1)
  end

  def test_to_large_negative
    assert_equal '', S.to(S.length * -1 - 2)
  end

  def test_to_huge_negative
    assert_equal '', S.to(S.length * -10)
  end

end
