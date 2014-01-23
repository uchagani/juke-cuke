# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jukecuke/version'

Gem::Specification.new do |spec|
  spec.name          = "jukecuke"
  spec.version       = Jukecuke::VERSION
  spec.authors       = ["Umair Chagani and Mark Walker"]
  spec.email         = ["umair.chagani@manheim.com"]
  spec.summary       = "Run your cukes multi-threaded in JRuby."
  spec.description   = "Run your cukes multi-threaded in JRuby."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
  spec.add_dependency "cucumber"
  spec.add_dependency "cukeforker"
end
