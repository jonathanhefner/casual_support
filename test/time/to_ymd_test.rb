require 'test_helper'
require 'casual_support/time/to_ymd'

class TimeToYmdTest < Minitest::Test

  def test_to_ymd_proper_format
    assert_equal '1999-12-31', Time.new(1999, 12, 31, 23, 59, 58).to_ymd
  end

  def test_to_ymd_zero_padding
    assert_equal '2000-01-01', Time.new(2000, 1, 1, 0, 0, 1).to_ymd
  end

end
