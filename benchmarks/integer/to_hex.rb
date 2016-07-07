require 'benchmark/inputs'
require_relative '../../lib/casual_support'


Benchmark.inputs([*0..8]) do |job|
  job.report('Integer#to_hex'){|width| (210).to_hex(width) }
  job.report('sprintf'){|width| sprintf("%0#{width}x", 210) }
  job.compare!
end

Benchmark.inputs([0]) do |job|
  job.report('Integer#to_hex'){|width| (210).to_hex }
  job.report('Integer#to_s'){|width| (210).to_s(16) }
  job.compare!
end
