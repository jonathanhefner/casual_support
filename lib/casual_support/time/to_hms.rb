class Time

  # Formats time as "HH:MM:SS" (e.g. "23:59:59").  Equivalent to
  # +strftime("%H:%M:%S")+, but faster.
  #
  # @return [String] the time formatted as "HH:MM:SS"
  def to_hms
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  If Time#strftime becomes optimized to that
    # level in the future, it should be used instead of sprintf.
    sprintf('%02d:%02d:%02d'.freeze, hour, min, sec)
  end

end
