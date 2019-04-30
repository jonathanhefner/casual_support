class Hash

  # Associates a key with a value.  Similar to +Hash#[]=+, but returns
  # the Hash instead of the value.  Faster than +Hash#merge!+ for
  # singular values in a loop.
  #
  # @example
  #   cache = id_list.reduce({}) do |hash, id|
  #     hash.put!(id, find_by_id(id))
  #   end
  #
  # @param key
  # @param value
  # @return [Hash]
  def put!(key, value)
    self[key] = value
    self
  end

end
