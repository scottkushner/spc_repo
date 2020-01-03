# -*- encoding: utf-8 -*-
# stub: hydra-head 10.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-head".freeze
  s.version = "10.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matt Zumwalt, Bess Sadler, Julie Meloni, Naomi Dushay, Jessie Keck, John Scofield, Justin Coyne & many more.  See https://github.com/projecthydra/hydra-head/contributors".freeze]
  s.date = "2018-04-18"
  s.description = "Hydra-Head is a Rails Engine containing the core code for a Hydra application.".freeze
  s.email = ["hydra-tech@googlegroups.com".freeze]
  s.homepage = "http://projecthydra.org".freeze
  s.licenses = ["APACHE-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Hydra-Head Rails Engine".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.2.6"])
      s.add_runtime_dependency(%q<hydra-access-controls>.freeze, ["= 10.5.1"])
      s.add_runtime_dependency(%q<hydra-core>.freeze, ["= 10.5.1"])
      s.add_development_dependency(%q<solr_wrapper>.freeze, ["~> 0.18"])
      s.add_development_dependency(%q<fcrepo_wrapper>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<engine_cart>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.2.6"])
      s.add_dependency(%q<hydra-access-controls>.freeze, ["= 10.5.1"])
      s.add_dependency(%q<hydra-core>.freeze, ["= 10.5.1"])
      s.add_dependency(%q<solr_wrapper>.freeze, ["~> 0.18"])
      s.add_dependency(%q<fcrepo_wrapper>.freeze, ["~> 0.6"])
      s.add_dependency(%q<engine_cart>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.2.6"])
    s.add_dependency(%q<hydra-access-controls>.freeze, ["= 10.5.1"])
    s.add_dependency(%q<hydra-core>.freeze, ["= 10.5.1"])
    s.add_dependency(%q<solr_wrapper>.freeze, ["~> 0.18"])
    s.add_dependency(%q<fcrepo_wrapper>.freeze, ["~> 0.6"])
    s.add_dependency(%q<engine_cart>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
  end
end
