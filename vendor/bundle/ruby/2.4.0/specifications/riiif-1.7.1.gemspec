# -*- encoding: utf-8 -*-
# stub: riiif 1.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "riiif".freeze
  s.version = "1.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Justin Coyne".freeze]
  s.date = "2018-05-14"
  s.description = "A IIIF image server".freeze
  s.email = ["justin@curationexperts.com".freeze]
  s.homepage = "https://github.com/curationexperts/riiif".freeze
  s.licenses = ["APACHE2".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "A rails engine that support IIIF requests".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, ["< 6", ">= 4.2"])
      s.add_runtime_dependency(%q<deprecation>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<engine_cart>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.47.1"])
      s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, ["< 6", ">= 4.2"])
      s.add_dependency(%q<deprecation>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<engine_cart>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.47.1"])
      s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.13"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, ["< 6", ">= 4.2"])
    s.add_dependency(%q<deprecation>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<engine_cart>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.47.1"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.13"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
  end
end
