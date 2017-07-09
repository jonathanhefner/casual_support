require 'test_helper'

class StringAfterTest < Minitest::Test

  SUBJECTS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, " ", subject.after(" ")
    end
  end

  def test_subjects_with_empty_delimiter
    SUBJECTS.each do |subject|
      assert_invariants subject, "", subject.after("")
    end
  end


  private

  def assert_invariants(subject, delimiter, result)
    if subject.include?(delimiter)
      refute_same subject, result

      assert subject.end_with?("#{delimiter}#{result}")

      assert_equal 1, subject[0...-result.length].scan(delimiter).length,
        "Delimiter must occur exactly once before result"
    else
      assert_nil result
    end
  end

end
