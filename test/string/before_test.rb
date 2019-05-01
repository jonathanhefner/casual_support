require "test_helper"

class StringBeforeTest < Minitest::Test

  STRINGS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_before
    STRINGS.each do |string|
      assert_invariants string, " ", string.before(" ")
    end
  end

  def test_before_with_empty_delimiter
    STRINGS.each do |string|
      assert_invariants string, "", string.before("")
    end
  end


  private

  def assert_invariants(string, delimiter, result)
    refute_same string, result

    assert string.start_with?(result)

    assert_equal 1, "#{result}#{delimiter}".scan(delimiter).length,
      "Non-empty delimiter must not occur within result"
  end

end
