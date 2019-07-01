require "date"


class Date

  # Alias of +Date#to_s+.  Formats the Date as "YYYY-MM-DD".
  #
  # Provided for parity with {Time#to_hms}.
  #
  # @return [String]
  alias :to_ymd :to_s

end
