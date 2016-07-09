$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'casual_support'

require 'minitest/autorun'

class Minitest::Test

  def assert_equal_not_same(expected, actual)
    assert_equal(expected, actual)
    refute_same(expected, actual)
  end

end
