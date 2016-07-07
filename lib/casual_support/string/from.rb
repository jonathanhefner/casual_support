class String

  # This replaces Active Support's +String#from+.  It is faster.
  def from(position)
    position += self.length if position < 0
    self[position, length]
  end

end
