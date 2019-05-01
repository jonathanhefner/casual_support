require "test_helper"

class ComparableAtLeastTest < Minitest::Test

  def test_at_least
    min = 1
    (min - 2..min + 2).each do |value|
      assert_equal [value, min].max, value.at_least(min)
    end
  end

end
