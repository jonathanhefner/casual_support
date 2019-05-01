require "test_helper"

class StringFromTest < Minitest::Test

  STRINGS = [
    "",
    "abcdef",
  ]

  def test_from
    STRINGS.each do |string|
      (-string.length - 2..string.length + 2).each do |position|
        assert_invariants string, position, string.from(position)
      end
    end
  end

  private

  def assert_invariants(string, position, result)
    if position < -string.length || position > string.length
      assert_nil result
    else
      refute_same string, result

      assert string.end_with?(result)

      expected_length = (position >= 0 ? string.length : 0) - position
      assert_equal expected_length, result.length
    end
  end

end
