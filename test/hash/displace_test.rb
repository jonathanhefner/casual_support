require "test_helper"

class HashDisplaceTest < Minitest::Test

  def test_displace
    do_and_assert_invariants(Hash.new)
  end

  def test_displace_with_default_value
    do_and_assert_invariants(Hash.new(42))
  end

  private

  def do_and_assert_invariants(hash)
    [*1..3, *1..3].each_with_index do |key, new_value|
      old_value = hash[key]
      expected_length = hash.length + (hash.key?(key) ? 0 : 1)

      result = hash.displace(key, new_value)

      assert_equal [old_value], [result]
      assert_equal new_value, hash[key]
      assert_equal expected_length, hash.length
    end
  end

end
