require_relative "assign_attributes"

class Struct

  # Constructs an instance of a subclass of Struct, and assigns the
  # values of the given +attributes+ Hash to the instance.
  #
  # This method is intended for use only with subclasses of Struct which
  # do not alter the default signature of the +initialize+ method.
  # Specifically, the +initialize+ method must support invocation with
  # no arguments.
  #
  # @see Struct#assign_attributes
  #
  # @example
  #   Point = Struct.new(:x, :y, :z)
  #
  #   Point.from_h(x: 10, y: 20, z: 30)  # == Point.new(10, 20, 30)
  #
  # @param attributes [Hash{Symbol => Object}, Hash{String => Object}]
  # @return [Struct]
  def self.from_h(attributes)
    raise "Struct.from_h is for use only with subclasses of Struct" if self == Struct
    self.new.assign_attributes(attributes)
  end

end
