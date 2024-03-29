# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lorem/version'

Gem::Specification.new do |spec|
  spec.name          = "lorem"
  spec.version       = Lorem::VERSION
  spec.authors       = ["Machiko Yasuda"]
  spec.email         = ["machikoyasuda@gmail.com"]
  spec.description   = %q{Lorem ipsum generator}
  spec.summary       = %q{Fill up spaces with Lorem jepisum text}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "thor"
  spec.add_development_dependency "rspec"
end
