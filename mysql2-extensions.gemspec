# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mysql2_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "mysql2-extensions"
  spec.version       = Mysql2Extionsions::VERSION
  spec.authors       = ["Daisuke Sato"]
  spec.email         = ["g00.eccyan@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "activerecord", ">= 3.0.0"
  spec.add_development_dependency "mysql2"
  spec.add_development_dependency "database_cleaner"

  spec.add_runtime_dependency "activerecord", ">= 3.0.0"
  spec.add_runtime_dependency "arel", ">= 3.0.0"
end
