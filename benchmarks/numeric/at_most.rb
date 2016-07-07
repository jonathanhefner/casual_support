require 'benchmark/inputs'
require_relative '../../lib/casual_support'


Benchmark.inputs([*1..10]) do |job|
  job.report('Numeric#at_most'){|i| i.at_most(5) }
  job.report('Array#min'){|i| [i, 5].min }
  job.compare!
end
