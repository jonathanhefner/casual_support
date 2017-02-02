require 'active_support/core_ext/string/access'

class String

  # This replaces Active Support's +String#from+.  It is faster.
  remove_method :from
  def from(position)
    self[position, length]
  end

end
