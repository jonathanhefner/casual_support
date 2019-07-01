require "benchmark/inputs"
require "active_support/all"
class String
  alias_method :old_last, :last
end
require_relative "../../lib/casual_support"


class String
  def last_alt1(limit = 1)
    limit <= 0 ? "" : (self[-limit, limit] || self.dup)
  end
end


STRING = "abcdef"

Benchmark.inputs([*0..(STRING.length + 1)]) do |job|
  job.report("casual_support String#last"){|n| STRING.last(n) }
  job.report("casual_support String#last_alt1"){|n| STRING.last_alt1(n) }
  job.report("active_support String#last"){|n| STRING.old_last(n) }
  job.compare!
end
