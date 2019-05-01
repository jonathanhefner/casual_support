require "test_helper"

class DateToHmsTest < Minitest::Test

  def test_to_hms
    assert_equal "00:00:00", Date.new(1999, 12, 31).to_hms
  end

end
