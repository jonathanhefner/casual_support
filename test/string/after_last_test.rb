require "test_helper"

class StringAfterLastTest < Minitest::Test

  SUBJECTS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, " ", subject.after_last(" ")
    end
  end

  def test_subjects_with_empty_delimiter
    SUBJECTS.each do |subject|
      assert_invariants subject, "", subject.after_last("")
    end
  end


  private

  def assert_invariants(subject, delimiter, result)
    if subject.include?(delimiter)
      refute_same subject, result

      assert subject.end_with?("#{delimiter}#{result}")

      assert_equal 1, "#{delimiter}#{result}".scan(delimiter).length,
        "Non-empty delimiter must not occur within result"
    else
      assert_nil result
    end
  end

end
