require "test_helper"

class NumericSignTest < Minitest::Test

  def test_sign
    (-3..3).each do |num|
      assert_invariants num, num.sign
    end
  end

  private

  def assert_invariants(num, result)
    assert_includes (-1..1), result
    assert_equal (num < 0), (result < 0)
    assert_equal (num == 0), (result == 0)
    assert_equal (num > 0), (result > 0)
  end

end
