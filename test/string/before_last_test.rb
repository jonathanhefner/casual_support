require "test_helper"

class StringBeforeLastTest < Minitest::Test

  STRINGS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_before_last
    STRINGS.each do |string|
      assert_invariants string, " ", string.before_last(" ")
    end
  end

  def test_before_last_with_empty_delimiter
    STRINGS.each do |string|
      assert_invariants string, "", string.before_last("")
    end
  end

  private

  def assert_invariants(string, delimiter, result)
    refute_same string, result

    assert string.start_with?(result)

    assert_operator string[result.length..-1].scan(delimiter).length, :<=, 1,
      "Delimiter must occur at most once after result"
  end

end
