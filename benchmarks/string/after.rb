require 'benchmark/inputs'
require_relative '../../lib/casual_support'


class String

  def after_alt1(delim)
    i = self.index(delim)
    i ? self.drop(i + delim.length) : ''
  end

  def after_alt2(delim)
    self.drop((self.index(delim) || self.length) + delim.length)
  end

end


STRING = 'abcnoonxyz'

Benchmark.inputs(STRING.chars << '_') do |job|
  job.report('String#after'){|delim| STRING.after(delim) }
  job.report('String#after_alt1'){|delim| STRING.after_alt1(delim) }
  job.report('String#after_alt2'){|delim| STRING.after_alt2(delim) }
  job.report('String#split'){|delim| STRING.split(delim, 2)[1] || '' }
  job.compare!
end
