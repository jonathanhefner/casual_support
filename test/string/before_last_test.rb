require 'test_helper'

class StringBeforeLastTest < Minitest::Test

  def test_before_last_multi_delim
    assert_equal 'aa bb', 'aa bb cc'.before_last(' ')
  end

  def test_before_last_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.before_last('z')
  end

end
