require "test_helper"

class EnumerableIndexToTest < Minitest::Test

  ENUMERABLES = [
    [],
    [0, 1, 2],
    (0...0),
    (0..2),
  ]

  def test_index_to
    f = proc(&:odd?)

    ENUMERABLES.each do |enum|
      expected = enum.map{|x| [x, f[x]] }.to_h
      assert_equal expected, enum.index_to(&f)
    end
  end

end
