# frozen_string_literal: true

require "benchmark/inputs"
require_relative "../../lib/casual_support"


Benchmark.inputs([Time.new(1999, 12, 31, 23, 59, 59)]) do |job|
  job.report("Time#to_ymd"){|t| t.to_ymd }
  job.report("Time#strftime"){|t| t.strftime("%Y-%m-%d") }
  job.compare!
end
