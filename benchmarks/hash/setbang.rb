require 'benchmark/inputs'
require_relative '../../lib/casual_support'


Benchmark.inputs([[1], [*1..10], [*1..100]]) do |job|
  job.report('reduce{ set! }') do |ary|
    ary.reduce({}){|h, i| h.set!(i, i) }
  end
  job.report('reduce{ merge! }') do |ary|
    ary.reduce({}){|h, i| h.merge!(i => i) }
  end
  job.compare!
end
