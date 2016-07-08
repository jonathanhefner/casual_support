require 'benchmark/inputs'
require_relative '../../lib/casual_support'


STRING = 'abcnoonxyz'

Benchmark.inputs(STRING.chars << '_') do |job|
  job.report('String#after'){|delim| STRING.after(delim) }
  job.report('String#split'){|delim| STRING.split(delim, 2)[1] || '' }
  job.compare!
end
