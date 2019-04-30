require "test_helper"

class StringSuffixTest < Minitest::Test

  SUBJECTS = [
    "",
    "xyz",
    "xyzxyz",
    "abcxyzxyz",
    "abcxyz",
    "abc",
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, "xyz", subject.suffix("xyz")
    end
  end

  def test_empty_suffix
    assert_invariants "abc", "", "abc".suffix("")
  end


  private

  def assert_invariants(subject, affix, result)
    refute_same subject, result

    assert result.start_with?(subject)
    assert result.end_with?(affix)

    expected_length = subject.length + (subject.end_with?(affix) ? 0 : affix.length)
    assert_equal expected_length, result.length
  end

end
