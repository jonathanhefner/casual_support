require 'benchmark/inputs'
require_relative '../../lib/casual_support'


Benchmark.inputs([*1..10]) do |job|
  job.report('Comparable#at_least'){|i| i.at_least(5) }
  job.report('Array#max'){|i| [i, 5].max }
  job.compare!
end
