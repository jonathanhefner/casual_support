require "test_helper"

class ComparableAtLeastTest < Minitest::Test

  def test_range
    limit = 100
    (limit - 2..limit + 2).each do |subject|
      assert_invariants subject, limit, subject.at_least(limit)
    end
  end


  private

  def assert_invariants(subject, limit, result)
    assert_equal [subject, limit].max, result
  end

end
