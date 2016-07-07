require 'test_helper'
require 'casual_support/string/after'

class StringAfterTest < Minitest::Test

  def test_after_multi_delim
    assert_equal 'bb cc', 'aa bb cc'.after(' ')
  end

  def test_after_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.after('z')
  end

end
