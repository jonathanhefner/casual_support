require "test_helper"

class HashPutbangTest < Minitest::Test

  def test_putbang
    hash = {}.put!(:a, 0).put!(:b, 2)
    assert_equal({a: 0, b: 2}, hash)

    hash.put!(:a, 1)
    assert_equal({a: 1, b: 2}, hash)
  end

end
