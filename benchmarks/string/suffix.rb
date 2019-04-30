require 'benchmark/inputs'
require_relative '../../lib/casual_support'


SUFFIX = 'xyz'
SUFFIX_REGEX = /^(?!xyz)/

Benchmark.inputs(['abc', 'abcyz', 'abcxyz', '']) do |job|
  job.report('String#suffix'){|s| s.suffix(SUFFIX) }
  job.report('String#gsub'){|s| s.gsub(SUFFIX_REGEX, SUFFIX) }
  job.compare!
end
