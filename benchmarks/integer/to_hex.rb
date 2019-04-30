# frozen_string_literal: true

require "benchmark/inputs"
require_relative "../../lib/casual_support"


class Integer

  def to_hex_alt1(width = nil)
    h = self.to_s(16)
    width ? h.rjust(width, "0") : h
  end

  def to_hex_alt2(width = 0)
    h = self.to_s(16)
    width > h.length ? h.rjust(width, "0") : h
  end

end


Benchmark.inputs([*0..8]) do |job|
  job.report("Integer#to_hex"){|width| (210).to_hex(width) }
  job.report("Integer#to_hex_alt1"){|width| (210).to_hex_alt1(width) }
  job.report("Integer#to_hex_alt2"){|width| (210).to_hex_alt2(width) }
  job.report("sprintf"){|width| sprintf("%0#{width}x", 210) }
  job.compare!
end

Benchmark.inputs([nil]) do |job|
  job.report("Integer#to_hex"){|width| (210).to_hex }
  job.report("Integer#to_hex_alt1"){|width| (210).to_hex_alt1 }
  job.report("Integer#to_hex_alt2"){|width| (210).to_hex_alt2 }
  job.report("Integer#to_s"){|width| (210).to_s(16) }
  job.compare!
end
