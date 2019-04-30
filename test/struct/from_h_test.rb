require 'test_helper'

class StructFromHTest < Minitest::Test

  def test_inputs
    [
      {},
      { a: 1 },
      { a: 1, b: 2, c: 3 },
      { "a" => 1, "b" => 2, "c" => 3 },
    ].each do |input|
      assert_invariants input, Subject.from_h(input)
    end
  end

  def test_non_subclass
    assert_raises(RuntimeError) { Struct.from_h(x: 1) }
  end


  private

  Subject = Struct.new(:a, :b)

  def assert_invariants(attributes, result)
    equivalent_args = Subject.members.map{|m| attributes[m] || attributes[m.to_s] }

    assert_equal Subject.new(*equivalent_args), result
  end

end
