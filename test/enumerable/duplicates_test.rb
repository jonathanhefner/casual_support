require 'test_helper'

class EnumerableDuplicatesTest < Minitest::Test

  SUBJECTS = [
    [0, 1, 1, 2, 3, 5],
    [0, 1, 0, 1, 0, 1],
    [1, 3, 4, 3, 1, 4],
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, subject.duplicates
    end
  end


  private

  def assert_invariants(subject, result)
    positions = subject.each_with_index.reduce({}) do |pos, (e, i)|
      (pos[e] ||= []) << i
      pos
    end

    assert result.all?{|e| positions[e] && positions[e].length >= 2 },
      "Result must contain only duplicate elements of the original input"

    assert_equal result.uniq, result,
      "Result must contain only a single copy of each duplicate element"

    assert_equal result.sort_by{|e| positions[e][1] }, result.to_a,
      "Result must preserve order of duplicate elements"
  end

end
