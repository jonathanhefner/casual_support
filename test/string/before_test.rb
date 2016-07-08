require 'test_helper'

class StringBeforeTest < Minitest::Test

  def test_before_multi_delim
    assert_equal 'aa', 'aa bb cc'.before(' ')
  end

  def test_before_no_delim
    s = 'aa bb cc'
    assert_equal_not_same s, s.before('z')
  end

end
