require 'test_helper'

class StringLchompTest < Minitest::Test

  PREFIX = 'http://'
  WITHOUT_PREFIX = 'example.com'
  WITH_PREFIX = PREFIX + WITHOUT_PREFIX

  def test_lchomp_basic_usage
    assert_equal WITHOUT_PREFIX, WITH_PREFIX.lchomp(PREFIX)
  end

  def test_lchomp_already_chomped
    assert_equal_not_same WITHOUT_PREFIX, WITHOUT_PREFIX.lchomp(PREFIX)
  end

end
