require "date"

class Date

  # Formats the Date as "YYYY-MM-DD".  Equivalent to
  # +strftime("%Y-%m-%d")+.
  #
  # @example
  #   Date.new(1999, 12, 31).to_ymd  # == "1999-12-31"
  #
  # @return [String]
  def to_ymd
    # Date#strftime appears to be **much** faster than Time#strftime
    # (nearly 3x faster!).  Thus it is used here, unlike Time#to_ymd
    # which uses sprintf.
    self.strftime("%Y-%m-%d".freeze)
  end

end
