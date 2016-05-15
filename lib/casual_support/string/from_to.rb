class String

  # This replaces Active Support's +String#from+.  It is ~40% faster.
  def from(position)
    position += self.length if position < 0
    self[position, length]
  end

  # This replaces Active Support's +String#to+.  It is ~40% faster.
  def to(position)
    position += self.length if position < 0
    self[0, position + 1]
  end

end
