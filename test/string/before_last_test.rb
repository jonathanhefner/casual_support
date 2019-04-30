require 'test_helper'

class StringBeforeLastTest < Minitest::Test

  SUBJECTS = [
    "",
    "ab",
    "ab cd",
    "ab cd ef",
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, " ", subject.before_last(" ")
    end
  end

  def test_subjects_with_empty_delimiter
    SUBJECTS.each do |subject|
      assert_invariants subject, "", subject.before_last("")
    end
  end


  private

  def assert_invariants(subject, delimiter, result)
    refute_same subject, result

    assert subject.start_with?(result)

    assert_operator subject[result.length..-1].scan(delimiter).length, :<=, 1,
      "Delimiter must occur at most once after result"
  end

end
