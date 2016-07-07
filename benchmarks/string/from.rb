require 'benchmark/inputs'
require 'active_support/all'
class String
  alias_method :old_from, :from
end
require_relative '../../lib/casual_support'


STRING = 'abcdef'

Benchmark.inputs([*0..(STRING.length + 1)]) do |job|
  job.report('casual_support String#from'){|n| STRING.from(n) }
  job.report('active_support String#from'){|n| STRING.old_from(n) }
  job.compare!
end
