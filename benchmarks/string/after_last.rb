require "benchmark/inputs"
require_relative "../../lib/casual_support"


class String

  def after_last_alt1(delim)
    i = self.rindex(delim)
    i && self.drop(i + delim.length)
  end

end


STRING = "abcnoonxyz"

Benchmark.inputs(STRING.chars << "_") do |job|
  job.report("String#after_last"){|delim| STRING.after_last(delim) }
  job.report("String#after_last_alt1"){|delim| STRING.after_last_alt1(delim) }
  job.report("String#split"){|delim| STRING.split(delim, -1).drop(1).last }
  job.compare!
end
