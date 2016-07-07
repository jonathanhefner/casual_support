require 'test_helper'
require 'casual_support/string/before'

class StringBeforeTest < Minitest::Test

  def test_before_multi_delim
    assert_equal 'aa', 'aa bb cc'.before(' ')
  end

  def test_before_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.before('z')
  end

end
