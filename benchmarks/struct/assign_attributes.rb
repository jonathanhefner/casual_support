require 'benchmark/inputs'
require_relative '../../lib/casual_support'


class Struct

  def assign_attributes_alt1(new_attributes)
    self.members.each do |m|
      if new_attributes.key?(m)
        self[m] = new_attributes[m]
      elsif new_attributes.key?(m.to_s)
        self[m] = new_attributes[m.to_s]
      end
    end
    self
  end

  def assign_attributes_alt2(new_attributes)
    self.members.each do |m|
      if new_attributes.key?(m)
        self[m] = new_attributes[m]
      elsif new_attributes.key?(m_s = m.to_s)
        self[m] = new_attributes[m_s]
      end
    end
    self
  end

  def assign_attributes_alt3(new_attributes)
    new_attributes.each do |k, v|
      self[k.to_sym] = v if self.members.include?(k.to_sym)
    end
    self
  end

  def assign_attributes_alt4(new_attributes)
    new_attributes.each do |k, v|
      m = k.to_sym
      self[m] = v if self.members.include?(m)
    end
    self
  end

end


Subject = Struct.new(:attr1, :attr2, :attr3)
subject = Subject.new(1, 2, 3)

input_attributes = [
  { attr1: 11 },
  { attr1: 111, attr2: 222 },
  { attr1: 1111, attr2: 2222, attr3: 3333 },
  { attr1: 11111, attr2: 22222, attr3: 33333, attr9: 99999 },
  { "attr1" => 11 },
  { "attr1" => 111, "attr2" => 222 },
  { "attr1" => 1111, "attr2" => 2222, "attr3" => 3333 },
  { "attr1" => 11111, "attr2" => 22222, "attr3" => 33333, "attr9" => 99999 },
]


Benchmark.inputs(input_attributes) do |job|
  job.report('Struct#assign_attributes'){|attrs| subject.assign_attributes(attrs) }
  job.report('Struct#assign_attributes_alt1'){|attrs| subject.assign_attributes_alt1(attrs) }
  job.report('Struct#assign_attributes_alt2'){|attrs| subject.assign_attributes_alt2(attrs) }
  job.report('Struct#assign_attributes_alt3'){|attrs| subject.assign_attributes_alt3(attrs) }
  job.report('Struct#assign_attributes_alt4'){|attrs| subject.assign_attributes_alt4(attrs) }
  job.compare!
end
