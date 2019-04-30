require "benchmark/inputs"
require_relative "../../lib/casual_support"


module Comparable

  def at_most_alt1(limit)
    [self, limit].min
  end

end


Benchmark.inputs([*1..10]) do |job|
  job.report("Comparable#at_most"){|i| i.at_most(5) }
  job.report("Comparable#at_most_alt1"){|i| i.at_most_alt1(5) }
  job.report("Array#min"){|i| [i, 5].min }
  job.compare!
end
