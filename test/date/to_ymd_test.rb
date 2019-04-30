require "test_helper"

class DateToYmdTest < Minitest::Test

  SUBJECTS = [
    Date.new(1999, 12, 31),
    Date.new(2000, 1, 1),
  ]

  def test_subjects
    SUBJECTS.each do |subject|
      assert_invariants subject, subject.to_ymd
    end
  end


  private

  def assert_invariants(subject, result)
    assert_match %r/^\d\d\d\d-\d\d-\d\d$/, result
    assert_equal subject, Date.parse(result)
  end

end
