require 'active_support/core_ext/string/access'

class String

  # This replaces Active Support's +String#last+, but it returns an
  # empty string when given a negative +limit+ argument, whereas Active
  # Support's +String#last+ removes +limit.abs+ characters from the
  # beginning of the string.  Returning an empty string makes more sense
  # if you interpret +last+ as "keep upto +limit+ characters."  At most,
  # a negative +limit+ should *keep* that many characters from the
  # beginning of the string, rather than *remove* that many characters
  # (but returning an empty string is a good conservative choice).  Also
  # see +String#first+.
  #
  # This method is also faster.
  remove_method :last
  def last(limit = 1)
    limit < 0 ? '' : (self[-limit, limit] || self.dup)
  end

end
