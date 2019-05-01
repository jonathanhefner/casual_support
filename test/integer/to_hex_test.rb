require "test_helper"

class IntegerToHexTest < Minitest::Test

  def test_to_hex
    assert_invariants 255, 0, 255.to_hex
  end

  def test_to_hex_with_width
    (0..8).each do |width|
      assert_invariants 255, width, 255.to_hex(width)
    end
  end

  private

  def assert_invariants(int, width, result)
    assert_match %r/^[0-9a-f]+$/, result
    assert_operator result.length, :>=, width
    assert_equal int, result.to_i(16)
  end

end
