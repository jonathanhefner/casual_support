require 'test_helper'

class StringPrefixTest < Minitest::Test

  PREFIX = 'http://'
  WITHOUT_PREFIX = 'example.com'
  WITH_PREFIX = PREFIX + WITHOUT_PREFIX

  def test_prefix_basic_usage
    assert_equal WITH_PREFIX, WITHOUT_PREFIX.prefix(PREFIX)
  end

  def test_prefix_already_prefixed
    assert_equal_not_same WITH_PREFIX, WITH_PREFIX.prefix(PREFIX)
  end

end
