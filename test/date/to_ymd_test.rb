require 'test_helper'
require 'casual_support/date/to_ymd'

class DateToYmdTest < Minitest::Test

  def test_to_ymd_proper_format
    assert_equal '1999-12-31', Date.new(1999, 12, 31).to_ymd
  end

  def test_to_ymd_zero_padding
    assert_equal '2000-01-01', Date.new(2000, 1, 1).to_ymd
  end

end
