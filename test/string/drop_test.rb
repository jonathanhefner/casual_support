require "test_helper"

class StringDropTest < Minitest::Test

  STRINGS = [
    "",
    "a",
    "abc",
  ]

  def test_drop
    STRINGS.each do |string|
      (-2..string.length + 2).each do |n|
        assert_invariants string, n, string.drop(n)
      end
    end
  end

  private

  def assert_invariants(string, n, result)
    refute_same string, result

    assert string.end_with?(result)

    expected_length = [string.length - [n, 0].max, 0].max
    assert_equal expected_length, result.length
  end

end
