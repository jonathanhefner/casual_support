require 'benchmark/inputs'
require_relative '../../lib/casual_support'


STRING = 'abcnoonxyz'

Benchmark.inputs(STRING.chars << '_') do |job|
  job.report('String#after_last'){|delim| STRING.after_last(delim) }
  job.report('String#split'){|delim| STRING.split(delim).last }
  job.compare!
end