# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pul_uv_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "pul_uv_rails"
  spec.version       = PulUvRails::VERSION
  spec.authors       = ["Eliot Jordan"]
  spec.email         = ["eliot.jordan@gmail.com"]

  spec.summary       = "PUL Universal Viewer for rails projects."
  spec.description   = "Princeton University Library branded Universal Viewer for use in rails projects."
  spec.homepage      = "https://github.com/pulibrary/pul_uv_rails"
  spec.license       = "Apache2"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-rails"
end
