require "test_helper"

class ComparableAtMostTest < Minitest::Test

  def test_range
    limit = 100
    (limit - 2..limit + 2).each do |subject|
      assert_invariants subject, limit, subject.at_most(limit)
    end
  end


  private

  def assert_invariants(subject, limit, result)
    assert_equal [subject, limit].min, result
  end

end
