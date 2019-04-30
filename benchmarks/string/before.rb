require "benchmark/inputs"
require_relative "../../lib/casual_support"


class String

  def before_alt1(delim)
    i = self.index(delim)
    i ? self.first(i) : self.dup
  end

end



STRING = "abcnoonxyz"

Benchmark.inputs(STRING.chars << "_") do |job|
  job.report("String#before"){|delim| STRING.before(delim) }
  job.report("String#before_alt1"){|delim| STRING.before_alt1(delim) }
  job.report("String#split"){|delim| STRING.split(delim, 2).first }
  job.compare!
end
