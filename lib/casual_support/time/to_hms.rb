class Time

  # Formats the Time as "HH:MM:SS".  Equivalent to
  # +strftime("%H:%M:%S")+, but faster.
  #
  # @example
  #   Time.new(1999, 12, 31, 23, 59, 59).to_hms  # == "23:59:59"
  #
  # @return [String]
  def to_hms
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  If Time#strftime becomes optimized to that
    # level in the future, it should be used instead of sprintf.
    sprintf('%02d:%02d:%02d'.freeze, hour, min, sec)
  end

end
