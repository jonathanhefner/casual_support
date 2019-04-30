require "benchmark/inputs"
require "active_support/all"
class String
  alias_method :old_last, :last
end
require_relative "../../lib/casual_support"


STRING = "abcdef"

Benchmark.inputs([*0..(STRING.length + 1)]) do |job|
  job.report("casual_support String#last"){|n| STRING.last(n) }
  job.report("active_support String#last"){|n| STRING.old_last(n) }
  job.compare!
end
