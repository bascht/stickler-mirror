# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stickler/mirror/version'

Gem::Specification.new do |spec|
  spec.name          = "stickler-mirror"
  spec.version       = Stickler::Mirror::VERSION
  spec.authors       = ["Sebastian Schulze"]
  spec.email         = ["rubygems.org@bascht.com"]
  spec.description   = "Mirror a bunch of gems via stickler"
  spec.summary       = "Reads your current Gemfile and pushes all gems to stickler"
  spec.homepage      = "https://github.com/bascht/"
  spec.license       = "Apache v2 License"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "stickler"
  spec.add_development_dependency "trollop"
end
