class Hash

  # Associates +key+ with +value+, and returns +key+'s previously
  # associated value.  If +key+ had no previously associated value,
  # returns +Hash#default+.
  #
  # @example
  #   visited = { "id1" => true, "id2" => false }
  #
  #   visited.displace("id1", true)  # == true
  #   visited                        # == { "id1" => true, "id2" => false }
  #   visited.displace("id2", true)  # == false
  #   visited                        # == { "id1" => true, "id2" => true }
  #   visited.displace("id3", true)  # == nil
  #   visited                        # == { "id1" => true, "id2" => true, "id3" => true }
  #
  # @param key
  # @param value
  # @return [Hash]
  def displace(key, value)
    old_value = self[key]
    self[key] = value
    old_value
  end

end
