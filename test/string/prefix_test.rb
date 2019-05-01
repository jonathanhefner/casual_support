require "test_helper"

class StringPrefixTest < Minitest::Test

  STRINGS = [
    "",
    "abc",
    "xyz",
    "abcxyz",
  ]

  def test_prefix
    STRINGS.product(STRINGS).each do |string, affix|
      assert_invariants string, affix, string.prefix(affix)
    end
  end

  private

  def assert_invariants(string, affix, result)
    refute_same string, result

    assert result.start_with?(affix)
    assert result.end_with?(string)

    expected_length = string.length + (string.start_with?(affix) ? 0 : affix.length)
    assert_equal expected_length, result.length
  end

end
