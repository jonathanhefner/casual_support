require 'test_helper'

class TimeToYmdTest < Minitest::Test

  SUBJECTS = [
    Time.new(1999, 12, 31, 23, 59, 58),
    Time.new(2000, 1, 1, 0, 0, 1),
  ]

  def test_subjects
    SUBJECTS.each do |time|
      assert_invariants time, time.to_ymd
    end
  end


  private

  def assert_invariants(subject, result)
    assert_match %r/^\d\d\d\d-\d\d-\d\d$/, result

    y, m, d = result.split("-").map(&:to_i)
    assert_equal subject.year, y
    assert_equal subject.month, m
    assert_equal subject.day, d
  end

end
