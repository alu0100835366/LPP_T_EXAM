# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "my-gem"
  spec.version       = My::Gem::VERSION
  spec.authors       = ["Marcos y Antonio"]
  spec.email         = ["marcosluisdelgado@gmail.com"]
  spec.description   = %q{Practicas LPP}
  spec.summary       = %q{No hay mucho que decir}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"

end
