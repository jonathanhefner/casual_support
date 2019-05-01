require "test_helper"

class TimeToYmdTest < Minitest::Test

  TIMES = [
    Time.new(1999, 12, 31, 23, 59, 58),
    Time.new(2000, 1, 1, 0, 0, 1),
  ]

  def test_to_ymd
    TIMES.each do |time|
      expected = "#{time.year}-#{"%02d" % time.month}-#{"%02d" % time.day}"
      assert_equal expected, time.to_ymd
    end
  end

end
