require 'test_helper'
require 'casual_support/string/before_after'

class BeforeAfterTest < Minitest::Test

  def test_before_multi_delim
    assert_equal 'aa', 'aa bb cc'.before(' ')
  end

  def test_before_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.before('z')
  end


  def test_before_last_multi_delim
    assert_equal 'aa bb', 'aa bb cc'.before_last(' ')
  end

  def test_before_last_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.before_last('z')
  end


  def test_after_multi_delim
    assert_equal 'bb cc', 'aa bb cc'.after(' ')
  end

  def test_after_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.after('z')
  end


  def test_after_last_multi_delim
    assert_equal 'cc', 'aa bb cc'.after_last(' ')
  end

  def test_after_last_no_delim
    assert_equal 'aa bb cc', 'aa bb cc'.after_last('z')
  end

end
