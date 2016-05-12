require 'test_helper'
require 'casual_support/hash/setbang'

class SetbangTest < Minitest::Test

  def test_basic_usage
    assert_equal Hash.new.set!(1, 2), {1 => 2}
  end

end
