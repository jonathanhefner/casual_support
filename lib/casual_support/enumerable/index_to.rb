require 'casual_support/hash/setbang'

module Enumerable

  # Converts an +Enumerable+ into a +Hash+ by using its elements as keys
  # and extracting values from each.
  #
  # @yield [elem] extracts a value
  # @yieldparam elem element from the +Enumerable+
  # @yieldreturn value to associate with the +elem+ key
  # @return [Hash] hash with the +Enumerable+'s elements as keys
  def index_to()
    self.reduce({}){|h, k| h.set!(k, (yield k)) }
  end

end
