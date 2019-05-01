require "test_helper"

class DateToYmdTest < Minitest::Test

  DATES = [
    Date.new(1999, 12, 31),
    Date.new(2000, 1, 1),
  ]

  def test_to_ymd
    DATES.each do |date|
      expected = "#{date.year}-#{"%02d" % date.month}-#{"%02d" % date.day}"
      assert_equal expected, date.to_ymd
    end
  end

end
