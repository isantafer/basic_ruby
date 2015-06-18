# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basic_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "basic_ruby"
  spec.version       = BasicRuby::VERSION
  spec.authors       = ["Francisco Rojas"]
  spec.email         = ["josefcorojas@gmail.com"]

  spec.summary       = %q{This repo is meant to help people learning ruby the basic principles of the language}
  spec.description   = %q{This repo is meant to help people learning ruby the basic principles of the language}
  spec.homepage      = "https://github.com/francisco-rojas/basic_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
