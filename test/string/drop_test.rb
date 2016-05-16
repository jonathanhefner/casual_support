require 'test_helper'
require 'casual_support/string/drop'

class DropTest < Minitest::Test

  def test_drop_negative
    assert_equal 'hello', 'hello'.drop(-1)
  end

  def test_drop_zero
    assert_equal 'hello', 'hello'.drop(0)
  end

  def test_drop_some
    assert_equal 'llo', 'hello'.drop(2)
  end

  def test_drop_all
    assert_equal '', 'hello'.drop(5)
  end

  def test_drop_too_many
    assert_equal '', 'hello'.drop(6)
  end

end
