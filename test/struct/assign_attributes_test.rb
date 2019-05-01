require "test_helper"

class StructAssignAttributesTest < Minitest::Test

  Point = Struct.new(:x, :y)

  ATTRIBUTES = [
    {},
    { x: 1 },
    { x: 1, y: 2, z: 3 },
    { "x" => 1, "y" => 2, "z" => 3 },
  ]

  def test_assign_attributes
    ATTRIBUTES.each do |attributes|
      expected_h = Point.members.map{|m| [m, attributes[m.to_sym] || attributes[m.to_s]] }.to_h
      point = Point.new

      assert_same point, point.assign_attributes(attributes)
      assert_equal expected_h, point.to_h
    end
  end

end
