require "test_helper"

class StringLastTest < Minitest::Test

  SUBJECT = "abc"

  def test_range
    (-2..SUBJECT.length + 2).each do |n|
      assert_invariants SUBJECT, n, SUBJECT.last(n)
    end
  end

  def test_empty_subject
    (-2..2).each do |n|
      assert_invariants "", n, "".last(n)
    end
  end


  private

  def assert_invariants(subject, n, result)
    refute_same subject, result

    assert subject.end_with?(result)

    assert_operator result.length, :<=, [n, 0].max
  end

end
