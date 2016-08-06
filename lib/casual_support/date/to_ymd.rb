require 'date'

class Date

  # Formats date as "YYYY-MM-DD" (e.g. "1999-12-31").  Shortcut for
  # <code>strftime("%Y-%m-%d")</code>.
  #
  # @return [String] the date formatted as "YYYY-MM-DD"
  def to_ymd
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  Thus it used here, unlike Time#to_ymd which
    # uses sprintf.
    self.strftime('%Y-%m-%d'.freeze)
  end

end
