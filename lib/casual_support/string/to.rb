class String

  # This replaces Active Support's +String#to+.  It is faster.
  def to(position)
    position += self.length if position < 0
    self[0, position + 1]
  end

end
