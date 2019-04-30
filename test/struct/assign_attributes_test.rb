require 'test_helper'

class StructAssignAttributesTest < Minitest::Test

  def test_inputs
    [
      { a: "a2" },
      { a: "a2", b: "b2" },
      { a: "a2", b: "b2", c: "c2" },
      { a: "a2", b: "b2", c: "c2", d: "d2" },
      { "a" => "a2", "c" => "c2" },
      {},
      { d: "d2" },
      { "d" => "d2" },
    ].each do |input|
      assert_invariants input, make_subject.assign_attributes(input)
    end
  end


  private

  Subject = Struct.new(:a, :b, :c)

  def make_subject
    Subject.new("a1", "b1", "c1")
  end

  def assert_invariants(new_attributes, result)
    cleaned_attributes = new_attributes.
      map{|k, v| [k.to_sym, v] }.select{|k, v| Subject.members.include?(k) }.to_h

    assert_instance_of Subject, result
    assert_equal make_subject.to_h.merge(cleaned_attributes), result.to_h
  end

end
