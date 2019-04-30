require "test_helper"

class BooleanToZTest < Minitest::Test

  def test_exhaustively
    assert_equal 0, false.to_z
    assert_equal 1, true.to_z
  end

end
