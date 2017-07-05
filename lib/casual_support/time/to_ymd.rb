class Time

  # Formats the Time as "YYYY-MM-DD".  Equivalent to
  # +strftime("%Y-%m-%d")+, but faster.
  #
  # @example
  #   Time.new(1999, 12, 31, 23, 59, 59).to_ymd  # == "1999-12-31"
  #
  # @return [String]
  def to_ymd
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  If Time#strftime becomes optimized to that
    # level in the future, it should be used instead of sprintf.
    sprintf('%04d-%02d-%02d'.freeze, year, month, day)
  end

end
