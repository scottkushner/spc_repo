# -*- encoding: utf-8 -*-
# stub: ldp 0.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "ldp".freeze
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Beer".freeze]
  s.date = "2018-03-14"
  s.description = "Linked Data Platform client library".freeze
  s.email = ["chris@cbeer.info".freeze]
  s.executables = ["ldp".freeze]
  s.files = ["bin/ldp".freeze]
  s.homepage = "https://github.com/projecthydra/ldp".freeze
  s.licenses = ["APACHE2".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Linked Data Platform client library".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rdf>.freeze, [">= 1.1"])
      s.add_runtime_dependency(%q<rdf-turtle>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rdf-vocab>.freeze, [">= 0.8"])
      s.add_runtime_dependency(%q<rdf-isomorphic>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<json-ld>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<http_logger>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<deprecation>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<slop>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_dependency(%q<rdf>.freeze, [">= 1.1"])
      s.add_dependency(%q<rdf-turtle>.freeze, [">= 0"])
      s.add_dependency(%q<rdf-vocab>.freeze, [">= 0.8"])
      s.add_dependency(%q<rdf-isomorphic>.freeze, [">= 0"])
      s.add_dependency(%q<json-ld>.freeze, [">= 0"])
      s.add_dependency(%q<http_logger>.freeze, [">= 0"])
      s.add_dependency(%q<deprecation>.freeze, [">= 0"])
      s.add_dependency(%q<slop>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<rdf>.freeze, [">= 1.1"])
    s.add_dependency(%q<rdf-turtle>.freeze, [">= 0"])
    s.add_dependency(%q<rdf-vocab>.freeze, [">= 0.8"])
    s.add_dependency(%q<rdf-isomorphic>.freeze, [">= 0"])
    s.add_dependency(%q<json-ld>.freeze, [">= 0"])
    s.add_dependency(%q<http_logger>.freeze, [">= 0"])
    s.add_dependency(%q<deprecation>.freeze, [">= 0"])
    s.add_dependency(%q<slop>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
