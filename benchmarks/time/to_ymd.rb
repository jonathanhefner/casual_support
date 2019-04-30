require "benchmark/inputs"
require_relative "../../lib/casual_support"


FORMAT = "%Y-%m-%d"

Benchmark.inputs([Time.new(1999, 12, 31, 23, 59, 59)]) do |job|
  job.report("Time#to_ymd"){|t| t.to_ymd }
  job.report("Time#strftime"){|t| t.strftime("%Y-%m-%d") }
  job.report("Time#strftime(CONST)"){|t| t.strftime(FORMAT) }
  job.compare!
end
