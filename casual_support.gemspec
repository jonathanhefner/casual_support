# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'casual_support/version'

Gem::Specification.new do |spec|
  spec.name          = "casual_support"
  spec.version       = CasualSupport::VERSION
  spec.authors       = ["Jonathan Hefner"]
  spec.email         = ["jonathan.hefner@gmail.com"]

  spec.summary       = %q{Utility extensions to core objects, a la Active Support}
  spec.homepage      = "https://github.com/jonathanhefner/casual_support"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport', '>= 3.1', '< 5.1'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "yard", "~> 0.9"
  spec.add_development_dependency "benchmark-inputs", "~> 1.0"
end
