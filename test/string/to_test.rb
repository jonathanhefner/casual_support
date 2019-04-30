require "test_helper"

class StringToTest < Minitest::Test

  SUBJECT = "abcdef"

  def test_range
    (-SUBJECT.length - 2..SUBJECT.length + 2).each do |position|
      assert_invariants SUBJECT, position, SUBJECT.to(position)
    end
  end

  def test_empty_subject
    (-2..2).each do |position|
      assert_invariants "", position, "".to(position)
    end
  end


  private

  def assert_invariants(subject, position, result)
    refute_same subject, result

    assert subject.start_with?(result)

    p = [[position, -subject.length - 1].max, subject.length - 1].min
    expected_length = p + (p < 0 ? subject.length : 0) + 1
    assert_equal expected_length, result.length
  end


end
