require 'active_support/core_ext/string/access'

class String

  # This replaces Active Support's +String#first+, but it returns an
  # empty string when given a negative +limit+ argument, whereas Active
  # Support's +String#first+ removes +limit.abs+ characters from the
  # end of the string.  Returning an empty string makes more sense if
  # you interpret +first+ as "keep upto +limit+ characters."  At most, a
  # negative +limit+ should *keep* that many characters from the end of
  # the string, rather than *remove* that many characters (but returning
  # an empty string is a good conservative choice).
  #
  # This method is also faster.
  remove_method :first
  def first(limit = 1)
    self[0, limit] || ''
  end

end
