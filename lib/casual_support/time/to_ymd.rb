class Time

  # Formats time as "YYYY-MM-DD" (e.g. "1999-12-31").  Equivalent to
  # +strftime("%Y-%m-%d")+, but faster.
  #
  # @return [String] the time formatted as "YYYY-MM-DD"
  def to_ymd
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  If Time#strftime becomes optimized to that
    # level in the future, it should be used instead of sprintf.
    sprintf('%04d-%02d-%02d'.freeze, year, month, day)
  end

end
