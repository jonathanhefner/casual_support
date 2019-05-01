require "test_helper"

class StringToTest < Minitest::Test

  STRINGS = [
    "",
    "abcdef",
  ]

  def test_to
    STRINGS.each do |string|
      (-string.length - 2..string.length + 2).each do |position|
        assert_invariants string, position, string.to(position)
      end
    end
  end

  private

  def assert_invariants(string, position, result)
    refute_same string, result

    assert string.start_with?(result)

    p = [[position, -string.length - 1].max, string.length - 1].min
    expected_length = p + (p < 0 ? string.length : 0) + 1
    assert_equal expected_length, result.length
  end

end
