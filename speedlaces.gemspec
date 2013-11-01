# -*- encoding: utf-8 -*-
require File.expand_path('../lib/speedlaces/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["John Ford"]
  gem.email         = ["jwford@gmail.com"]
  gem.description   = %q{Declarative means to define object properties by passing a hash to the constructor, which will set the corresponding ivars.}
  gem.summary       = %q{Declarative named-argument object initialization.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "speedlaces"
  gem.require_paths = ["lib"]
  gem.version       = Speedlaces::VERSION

  gem.add_development_dependency "rspec"
end
