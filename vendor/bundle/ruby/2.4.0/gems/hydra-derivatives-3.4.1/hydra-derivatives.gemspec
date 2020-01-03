version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |spec|
  spec.name          = "hydra-derivatives"
  spec.version       = version
  spec.authors       = ["Justin Coyne"]
  spec.email         = ["justin@curationexperts.com"]
  spec.description   = "Derivative generation plugin for hydra"
  spec.summary       = "Derivative generation plugin for hydra"
  spec.license       = "APACHE2"
  spec.homepage      = "https://github.com/projecthydra/hydra-derivatives"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'fcrepo_wrapper', '~> 0.2'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency "solr_wrapper", "~> 0.4"

  spec.add_dependency 'active-fedora', '>= 11.3.1', '< 13'
  spec.add_dependency 'active_encode', '~>0.1'
  spec.add_dependency 'activesupport', '>= 4.0', '< 6'
  spec.add_dependency 'addressable', '~>2.5'
  spec.add_dependency 'deprecation'
  spec.add_dependency 'mime-types', '> 2.0', '< 4.0'
  spec.add_dependency 'mini_magick', '>= 3.2', '< 5'
end
