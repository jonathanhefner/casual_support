require 'test_helper'
require 'casual_support/enumerable/index_to'

class EnumerableIndexToTest < Minitest::Test

  def test_index_to_basic_usage
    assert_equal [1, 2].index_to{|k| k * 3 }, {1 => 3, 2 => 6}
  end

end
