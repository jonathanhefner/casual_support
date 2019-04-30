require_relative '../hash/putbang'

module Enumerable

  # Converts the Enumerable into a Hash, using its elements as keys and
  # using the given block to compute an associated value for each key.
  #
  # @example
  #   cache = id_list.index_to{|id| find_by_id(id) }
  #
  # @yieldparam element ['E] element from the Enumerable
  # @yieldreturn ['V] value to associate with the +element+ key
  # @return [Hash{'E => 'V}]
  def index_to()
    self.reduce({}){|h, k| h.put!(k, (yield k)) }
  end

end
