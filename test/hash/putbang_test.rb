require 'test_helper'

class HashPutbangTest < Minitest::Test

  def test_basic_usage
    assert_equal ({1 => 2}), Hash.new.put!(1, 2)
  end

end
