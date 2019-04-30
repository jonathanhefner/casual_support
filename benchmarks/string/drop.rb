require 'benchmark/inputs'
require_relative '../../lib/casual_support'


class String
  def drop_alt1(n)
    self[n.constrain(0, self.length), self.length]
  end
end


STRING = 'abcdef'

Benchmark.inputs([*0..(STRING.length + 1)]) do |job|
  job.report('String#drop'){|n| STRING.drop(n) }
  job.report('String#drop_alt1'){|n| STRING.drop_alt1(n) }
  job.compare!
end
