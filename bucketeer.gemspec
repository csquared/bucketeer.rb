# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bucketeer/version'

Gem::Specification.new do |spec|
  spec.name          = "bucketeer"
  spec.version       = Bucketeer::VERSION
  spec.authors       = ["csquared"]
  spec.email         = ["christopher.continanza@gmail.com"]

  spec.summary       = %q{Helper}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://addons.heroku.com/bucketeer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
