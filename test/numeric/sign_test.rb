require "test_helper"

class NumericSignTest < Minitest::Test

  def test_range
    (-3..3).each do |subject|
      assert_invariants subject, subject.sign
    end
  end


  private

  def assert_invariants(subject, result)
    assert_operator result, :<=, 1
    assert_operator result, :>=, -1

    assert_equal (subject < 0), (result < 0)
    assert_equal (subject == 0), (result == 0)
    assert_equal (subject > 0), (result > 0)
  end

end
