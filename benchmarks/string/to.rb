require 'benchmark/inputs'
require 'active_support/all'
class String
  alias_method :old_to, :to
end
require_relative '../../lib/casual_support'


STRING = 'abcdef'

Benchmark.inputs([*0..(STRING.length + 1)]) do |job|
  job.report('casual_support String#to'){|n| STRING.to(n) }
  job.report('active_support String#to'){|n| STRING.old_to(n) }
  job.compare!
end
