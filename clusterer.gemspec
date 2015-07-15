# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clusterer/version'

Gem::Specification.new do |spec|
  spec.name          = "clusterer"
  spec.version       = Clusterer::VERSION
  spec.authors       = ["Surendra K Singhi", "Retechnica"]
  spec.email         = ["ssinghi@kreeti.com", "ingenia-dev@retechnica.com"]

  spec.summary = "A library of clustering and classification algorithms for text data."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "stemmer"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "test-unit"
end
