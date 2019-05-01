require "test_helper"

class StringAfterLastTest < Minitest::Test

  STRINGS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_after_last
    STRINGS.each do |string|
      assert_invariants string, " ", string.after_last(" ")
    end
  end

  def test_after_last_with_empty_delimiter
    STRINGS.each do |string|
      assert_invariants string, "", string.after_last("")
    end
  end

  private

  def assert_invariants(string, delimiter, result)
    if string.include?(delimiter)
      refute_same string, result

      assert string.end_with?("#{delimiter}#{result}")

      assert_equal 1, "#{delimiter}#{result}".scan(delimiter).length,
        "Non-empty delimiter must not occur within result"
    else
      assert_nil result
    end
  end

end
