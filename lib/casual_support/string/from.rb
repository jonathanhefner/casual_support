class String

  # This replaces Active Support's +String#from+.  It is faster.
  def from(position)
    self[position, length]
  end

end
