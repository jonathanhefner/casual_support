require "test_helper"

class StringFirstTest < Minitest::Test

  STRINGS = [
    "",
    "a",
    "abc",
  ]

  def test_first
    STRINGS.each do |string|
      (-2..string.length + 2).each do |n|
        assert_invariants string, n, string.first(n)
      end
    end
  end

  private

  def assert_invariants(string, n, result)
    refute_same string, result

    assert string.start_with?(result)

    expected_length = [[n, 0].max, string.length].min
    assert_equal expected_length, result.length
  end

end
