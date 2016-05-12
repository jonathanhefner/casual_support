class Hash

  # Sets a value like +Hash#[]=+, but returns the modified Hash instead
  # of the value.  Useful with +#reduce+, and 2x faster than using
  # an equivalent +Hash#merge!+ (see
  # benchmark[https://github.com/JuanitoFatas/fast-ruby#hashmerge-vs-hash-code]).
  #
  # @param key
  # @param value
  # @return [Hash] the modified hash
  def set!(key, value)
    self[key] = value
    self
  end

end
