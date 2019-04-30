require "test_helper"

class StringPrefixTest < Minitest::Test

  SUBJECTS = [
    "",
    "abc",
    "abcabc",
    "abcabcxyz",
    "abcxyz",
    "xyz",
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, "abc", subject.prefix("abc")
    end
  end

  def test_empty_prefix
    assert_invariants "xyz", "", "xyz".prefix("")
  end


  private

  def assert_invariants(subject, affix, result)
    refute_same subject, result

    assert result.start_with?(affix)
    assert result.end_with?(subject)

    expected_length = subject.length + (subject.start_with?(affix) ? 0 : affix.length)
    assert_equal expected_length, result.length
  end

end
