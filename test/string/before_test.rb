require 'test_helper'

class StringBeforeTest < Minitest::Test

  SUBJECTS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, " ", subject.before(" ")
    end
  end

  def test_subjects_with_empty_delimiter
    SUBJECTS.each do |subject|
      assert_invariants subject, "", subject.before("")
    end
  end


  private

  def assert_invariants(subject, delimiter, result)
    refute_same subject, result

    assert subject.start_with?(result)

    assert_equal 1, "#{result}#{delimiter}".scan(delimiter).length,
      "Non-empty delimiter must not occur within result"
  end

end
