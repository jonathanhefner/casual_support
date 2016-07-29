require 'test_helper'

class StringAfterTest < Minitest::Test

  def test_after_multi_delim
    assert_equal 'bb cc', 'aa bb cc'.after(' ')
  end

  def test_after_trailing_delim
    assert_equal '', 'aa '.after(' ')
  end

  def test_after_missing_delim
    assert_equal nil, 'aa bb cc'.after('z')
  end

end
