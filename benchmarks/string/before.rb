require 'benchmark/inputs'
require_relative '../../lib/casual_support'


STRING = 'abcnoonxyz'

Benchmark.inputs(STRING.chars << '_') do |job|
  job.report('String#before'){|delim| STRING.before(delim) }
  job.report('String#split'){|delim| STRING.split(delim, 2).first }
  job.compare!
end
