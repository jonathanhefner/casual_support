class Time

  # Formats time as "YYYY-MM-DD" (e.g. "1999-12-31").  Equivalent to
  # +strftime("%Y-%m-%d")+, but ~6% faster (or ~18% if the format
  # string is an un-frozen literal, due to GC).
  #
  # @return [String] the time formatted as "YYYY-MM-DD"
  def to_ymd
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  If Time#strftime becomes optimized to that
    # level in the future, it should be used instead of sprintf.
    sprintf('%04d-%02d-%02d'.freeze, year, month, day)
  end

  # Formats time as "HH:MM:SS" (e.g. "23:59:59").  Equivalent to
  # +strftime("%H:%M:%S")+, but ~10% faster (or ~20% if the format
  # string is an un-frozen literal, due to GC).
  #
  # @return [String] the time formatted as "HH:MM:SS"
  def to_hms
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  If Time#strftime becomes optimized to that
    # level in the future, it should be used instead of sprintf.
    sprintf('%02d:%02d:%02d'.freeze, hour, min, sec)
  end

end
