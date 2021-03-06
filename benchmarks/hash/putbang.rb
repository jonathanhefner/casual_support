require "benchmark/inputs"
require_relative "../../lib/casual_support"


Benchmark.inputs([[1], [*1..10], [*1..100]]) do |job|
  job.report("reduce{ put! }") do |ary|
    ary.reduce({}){|h, i| h.put!(i, i) }
  end
  job.report("reduce{ merge! }") do |ary|
    ary.reduce({}){|h, i| h.merge!(i => i) }
  end
  job.compare!
end
