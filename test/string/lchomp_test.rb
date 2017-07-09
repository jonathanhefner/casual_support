require 'test_helper'

class StringLchompTest < Minitest::Test

  SUBJECT = "aabaab"

  def test_prefixes
    (0..SUBJECT.length).each do |prefix_length|
      prefix = SUBJECT[0, prefix_length]
      assert_invariants SUBJECT, prefix, SUBJECT.lchomp(prefix)
    end
  end

  def test_missing_prefix
    assert_invariants "abc", "z", "abc".lchomp("z")
  end

  def test_empty_subject
    assert_invariants "", "z", "".lchomp("z")
  end


  private

  def assert_invariants(subject, prefix, result)
    refute_same subject, result

    assert subject.end_with?(result)

    expected_length = subject.length - (subject.start_with?(prefix) ? prefix.length : 0)
    assert_equal expected_length, result.length
  end

end
