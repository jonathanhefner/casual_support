require 'test_helper'

class StringFromTest < Minitest::Test

  SUBJECT = "abcdef"

  def test_range
    (-SUBJECT.length - 2..SUBJECT.length + 2).each do |position|
      assert_invariants SUBJECT, position, SUBJECT.from(position)
    end
  end

  def test_empty_subject
    (-2..2).each do |position|
      assert_invariants "", position, "".from(position)
    end
  end


  private

  def assert_invariants(subject, position, result)
    if position < -subject.length || position > subject.length
      assert_nil result
    else
      refute_same subject, result

      assert subject.end_with?(result)

      expected_length = (position >= 0 ? subject.length : 0) - position
      assert_equal expected_length, result.length
    end
  end

end
