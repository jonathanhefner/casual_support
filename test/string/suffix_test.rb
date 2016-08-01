require 'test_helper'

class StringSuffixTest < Minitest::Test

  SUFFIX = '.html'
  WITHOUT_SUFFIX = 'page'
  WITH_SUFFIX = WITHOUT_SUFFIX + SUFFIX

  def test_suffix_basic_usage
    assert_equal WITH_SUFFIX, WITHOUT_SUFFIX.suffix(SUFFIX)
  end

  def test_suffix_already_prefixed
    assert_equal_not_same WITH_SUFFIX, WITH_SUFFIX.suffix(SUFFIX)
  end

end
