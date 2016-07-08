require 'benchmark/inputs'
require 'active_support/all'
class String
  alias_method :old_first, :first
end
require_relative '../../lib/casual_support'


STRING = 'abcdef'

Benchmark.inputs([*0..(STRING.length + 1)]) do |job|
  job.report('casual_support String#first'){|n| STRING.first(n) }
  job.report('active_support String#first'){|n| STRING.old_first(n) }
  job.compare!
end