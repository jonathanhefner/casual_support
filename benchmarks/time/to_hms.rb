require 'benchmark/inputs'
require_relative '../../lib/casual_support'


FORMAT = '%H:%M:%S'

Benchmark.inputs([Time.new(1999, 12, 31, 23, 59, 59)]) do |job|
  job.report('Time#to_hms'){|t| t.to_hms }
  job.report('Time#strftime'){|t| t.strftime('%H:%M:%S') }
  job.report('Time#strftime(CONST)'){|t| t.strftime(FORMAT) }
  job.compare!
end
