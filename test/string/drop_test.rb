require 'test_helper'

class StringDropTest < Minitest::Test

  SUBJECT = "abc"

  def test_range
    (-2..SUBJECT.length + 2).each do |n|
      assert_invariants SUBJECT, n, SUBJECT.drop(n)
    end
  end

  def test_empty_subject
    (-2..2).each do |n|
      assert_invariants "", n, "".drop(n)
    end
  end


  private

  def assert_invariants(subject, n, result)
    refute_same subject, result

    assert subject.end_with?(result)

    assert_operator result.length, :<=, [subject.length - n, 0].max
  end

end
