require 'benchmark/inputs'
require_relative '../../lib/casual_support'


STRING = 'abcnoonxyz'

Benchmark.inputs(STRING.chars << '_') do |job|
  job.report('String#before_last'){|delim| STRING.before_last(delim) }
  job.report('String#split'){|delim| STRING.split(delim, -1)[0..-2].join(delim) }
  job.compare!
end
