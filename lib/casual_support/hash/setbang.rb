class Hash

  # Sets a value like +Hash#[]=+, but returns the modified Hash instead
  # of the value.  Useful with +#reduce+, and faster than +Hash#merge!+.
  #
  # @param key
  # @param value
  # @return [Hash] the modified hash
  def set!(key, value)
    self[key] = value
    self
  end

end
