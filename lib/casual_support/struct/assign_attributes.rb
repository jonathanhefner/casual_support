class Struct

  # Assigns values in the given Hash to corresponding attributes of the
  # Struct.  Both Symbol keys and String keys are accepted.  Keys which
  # don't correspond to an attribute of the Struct are ignored.  Mutates
  # the Struct and returns it.
  #
  # @example
  #   Point = Struct.new(:x, :y, :z)
  #   point = Point.new(10, 20, 30)
  #
  #   point.assign_attributes(y: 30, z: 50).to_h  # == { x: 10, y: 30, z: 50 }
  #
  # @param new_attributes [Hash{Symbol => Object}, Hash{String => Object}]
  # @return [self]
  def assign_attributes(new_attributes)
    ms = self.members
    new_attributes.each do |k, v|
      m = k.to_sym
      self[m] = v if ms.include?(m)
    end
    self
  end

end
