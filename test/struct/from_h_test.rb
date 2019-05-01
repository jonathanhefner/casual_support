require "test_helper"

class StructFromHTest < Minitest::Test

  Point = Struct.new(:x, :y)

  ATTRIBUTES = [
    {},
    { x: 1 },
    { x: 1, y: 2, z: 3 },
    { "x" => 1, "y" => 2, "z" => 3 },
  ]

  def test_from_h
    ATTRIBUTES.each do |attributes|
      args = Point.members.map{|m| attributes[m.to_sym] || attributes[m.to_s] }

      assert_equal Point.new(*args), Point.from_h(attributes)
    end
  end

  def test_non_subclass_raises_error
    assert_raises(RuntimeError) { Struct.from_h(x: 1) }
  end

end
