require "test_helper"

class ComparableAtMostTest < Minitest::Test

  def test_at_most
    max = 10
    (max - 2..max + 2).each do |value|
      assert_equal [value, max].min, value.at_most(max)
    end
  end

end
