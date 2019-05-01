require "test_helper"

class TimeToHmsTest < Minitest::Test

  TIMES = [
    Time.new(1999, 12, 31, 23, 59, 58),
    Time.new(2000, 1, 1, 0, 0, 1),
  ]

  def test_to_hms
    TIMES.each do |time|
      expected = "#{"%02d" % time.hour}:#{"%02d" % time.min}:#{"%02d" % time.sec}"
      assert_equal expected, time.to_hms
    end
  end

end
