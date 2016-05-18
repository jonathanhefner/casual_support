require 'test_helper'
require 'casual_support/integer/to_hex'

class ToHexTest < Minitest::Test

  def test_to_hex_without_width
    assert_equal 'ff', (255).to_hex
  end

  def test_to_hex_with_width
    assert_equal '00ff', (255).to_hex(4)
  end

  def test_to_hex_with_too_short_width
    assert_equal 'ff', (255).to_hex(1)
  end

end
