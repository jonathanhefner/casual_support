require 'test_helper'

class StringAfterLastTest < Minitest::Test

  def test_after_last_multi_delim
    assert_equal 'cc', 'aa bb cc'.after_last(' ')
  end

  def test_after_last_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.after_last('z')
  end

end
