require "benchmark/inputs"
require_relative "../../lib/casual_support"


PREFIX = "abc"
PREFIX_REGEX = /^(?!abc)/

Benchmark.inputs(["xyz", "abxyz", "abcxyz", ""]) do |job|
  job.report("String#prefix"){|s| s.prefix(PREFIX) }
  job.report("String#gsub"){|s| s.gsub(PREFIX_REGEX, PREFIX) }
  job.compare!
end
