require "test_helper"

class StringAfterTest < Minitest::Test

  STRINGS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_after
    STRINGS.each do |string|
      assert_invariants string, " ", string.after(" ")
    end
  end

  def test_after_with_empty_delimiter
    STRINGS.each do |string|
      assert_invariants string, "", string.after("")
    end
  end

  private

  def assert_invariants(string, delimiter, result)
    if string.include?(delimiter)
      refute_same string, result

      assert string.end_with?("#{delimiter}#{result}")

      assert_equal 1, string[0...-result.length].scan(delimiter).length,
        "Delimiter must occur exactly once before result"
    else
      assert_nil result
    end
  end

end
