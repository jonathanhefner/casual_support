require 'test_helper'

class StringBetweenTest < Minitest::Test

  def test_between_basic_usage
    assert_equal 'bb', 'aa [bb] cc'.between('[', ']')
  end

  def test_between_multiple_occurrences
    assert_equal 'bb', 'aa [bb] [cc]'.between('[', ']')
  end

  def test_between_same_delim
    assert_equal 'bb', 'aa "bb" cc'.between('"', '"')
  end

  def test_between_same_delim_multiple_occurrences
    assert_equal 'bb', 'aa "bb" "cc"'.between('"', '"')
  end

  def test_between_missing_open
    assert_nil 'aa bb] cc'.between('[', ']')
  end

  def test_between_missing_close
    assert_nil 'aa [bb cc'.between('[', ']')
  end

  def test_between_missing_both
    assert_nil 'aa bb cc'.between('[', ']')
  end

end
