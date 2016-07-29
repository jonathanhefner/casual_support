require 'test_helper'

class StringAfterLastTest < Minitest::Test

  def test_after_last_multi_delim
    assert_equal 'cc', 'aa bb cc'.after_last(' ')
  end

  def test_after_last_trailing_delim
    assert_equal '', 'aa bb cc '.after_last(' ')
  end

  def test_after_last_missing_delim
    assert_equal nil, 'aa bb cc'.after_last('z')
  end

end
