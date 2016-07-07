class String

  # This replaces Active Support's +String#last+, but it returns an
  # empty string when given a negative argument.  It is ~75% faster.
  def last(limit = 1)
    limit <= 0 ? '' : self[length - limit, length]
  end

end
