require_relative "../hash/putbang"

module Enumerable

  # Converts the Enumerable into a Hash, using its elements as keys and
  # using the given block to compute an associated value for each key.
  #
  # @example
  #   cache = id_list.index_to{|id| find_by_id(id) }
  #
  # @yield [key]
  # @yieldparam key ['K]
  # @yieldreturn ['V]
  # @return [Hash<'K, 'V>]
  def index_to()
    self.reduce({}){|h, k| h.put!(k, (yield k)) }
  end

end
