require "test_helper"

class EnumerableIndexToTest < Minitest::Test

  SUBJECTS = [
    [],
    [0, 1, 2],
    (0...0),
    (0..2),
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, proc(&:odd?), subject.index_to(&:odd?)
    end
  end


  private

  def assert_invariants(subject, fn, result)
    assert_equal subject.to_a.sort, result.keys.sort

    assert_equal subject.map(&fn), subject.map{|e| result[e] }
  end

end
