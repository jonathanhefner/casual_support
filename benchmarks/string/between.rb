require 'benchmark/inputs'
require_relative '../../lib/casual_support'


class String

  def between_alt1(open, close)
    s = self.after(open)
    s && s.before(close) # fails to return nil if `close` is missing
  end

end


STRING = 'key="111-delim-222-delim-333"'

Benchmark.inputs(['"', '-delim-', '!']) do |job|
  job.report('String#between'){|delim| STRING.between(delim, delim) }
  job.report('String#between_alt1'){|delim| STRING.between_alt1(delim, delim) }
  job.compare!
end
