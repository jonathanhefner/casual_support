require 'test_helper'

class ComparableClampTest < Minitest::Test

  def test_range
    low, high = 0, 5
    (low - 2..high + 2).each do |subject|
      assert_invariants subject, low, high, subject.clamp(low, high)
    end
  end


  private

  def assert_invariants(subject, low, high, result)
    assert_equal [[subject, low].max, high].min, result
  end

end
