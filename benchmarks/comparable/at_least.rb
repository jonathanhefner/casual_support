require "benchmark/inputs"
require_relative "../../lib/casual_support"


module Comparable

  def at_least_alt1(limit)
    [self, limit].max
  end

end


Benchmark.inputs([*1..10]) do |job|
  job.report("Comparable#at_least"){|i| i.at_least(5) }
  job.report("Comparable#at_least_alt1"){|i| i.at_least_alt1(5) }
  job.report("Array#max"){|i| [i, 5].max }
  job.compare!
end
