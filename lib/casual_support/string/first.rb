class String

  # This replaces Active Support's +String#first+, but it returns an
  # empty string when given a negative argument.  It is faster.
  def first(limit = 1)
    limit <= 0 ? '' : self[0, limit]
  end

end
