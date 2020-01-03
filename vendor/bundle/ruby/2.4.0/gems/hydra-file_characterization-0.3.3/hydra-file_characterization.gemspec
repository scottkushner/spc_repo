# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hydra/file_characterization/version'

Gem::Specification.new do |gem|
  gem.name          = "hydra-file_characterization"
  gem.version       = Hydra::FileCharacterization::VERSION
  gem.authors       = [
    "James Treacy",
    "Jeremy Friesen",
    "Sue Richeson",
    "Rajesh Balekai"
  ]
  gem.email         = [
    "jatr@kb.dk",
    "jeremy.n.friesen@gmail.com",
    "spr7b@virginia.edu",
    "rbalekai@gmail.com"
  ]
  gem.description   = %q{To provide a wrapper for file characterization}
  gem.summary       = %q{To provide a wrapper for file characterization}
  gem.homepage      = "https://github.com/projecthydra/hydra-file_characterization"
  gem.license = "APACHE2"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activesupport", ">= 3.0.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard"
  gem.add_development_dependency 'guard-rspec'
end
