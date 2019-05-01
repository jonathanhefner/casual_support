require "test_helper"

class StringSuffixTest < Minitest::Test

  STRINGS = [
    "",
    "abc",
    "xyz",
    "abcxyz",
  ]

  def test_suffix
    STRINGS.product(STRINGS).each do |string, affix|
      assert_invariants string, affix, string.suffix(affix)
    end
  end

  private

  def assert_invariants(string, affix, result)
    refute_same string, result

    assert result.start_with?(string)
    assert result.end_with?(affix)

    expected_length = string.length + (string.end_with?(affix) ? 0 : affix.length)
    assert_equal expected_length, result.length
  end

end
