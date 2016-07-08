require 'test_helper'

class HashSetbangTest < Minitest::Test

  def test_basic_usage
    assert_equal Hash.new.set!(1, 2), {1 => 2}
  end

end
