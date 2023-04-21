module Enumerable

  # Creates a Hash using the Enumerable's elements as keys, and using
  # the given block to compute an associated value for each key.
  #
  # @example
  #   cache = id_list.index_to{|id| find_by_id(id) }
  #
  # @yield [key]
  # @yieldparam key [Object]
  # @yieldreturn [Object] value
  # @return [Hash{key => value}]
  def index_to()
    self.reduce({}){|h, k| h[k] = yield k; h }
  end

end
