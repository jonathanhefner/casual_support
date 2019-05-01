require "date"


class Date

  # Returns "00:00:00".
  #
  # Provided for parity with {Time#to_hms}.
  #
  # @return [String]
  def to_hms
    "00:00:00"
  end

end
