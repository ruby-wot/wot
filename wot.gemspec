# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wot/version'

Gem::Specification.new do |spec|
  spec.name          = "wot"
  spec.version       = Wot::VERSION
  spec.authors       = ["Marie Markwell"]
  spec.email         = ["me@marie.so"]

  spec.summary       = %q{Reinventing Ruby for my own amusement.}
  spec.homepage      = "https://absurd.technology"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "heresy", "~> 1.0.0"
  spec.add_runtime_dependency "globe", "~> 1.0.0"
  spec.add_runtime_dependency "lovama", "~> 0.2.4"
  spec.add_runtime_dependency "wot-quick_lambda", "~> 1.0.0"
end
