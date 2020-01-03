# -*- encoding: utf-8 -*-
# stub: rdf-trig 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rdf-trig".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg Kellogg".freeze]
  s.date = "2017-12-14"
  s.description = "RDF::TriG is an TriG reader/writer for the RDF.rb library suite.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "http://ruby-rdf.github.com/rdf-trig".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "TriG reader/writer for Ruby.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdf>.freeze, ["< 4.0", ">= 2.2"])
      s.add_runtime_dependency(%q<ebnf>.freeze, [">= 1.0.1", "~> 1.0"])
      s.add_runtime_dependency(%q<rdf-turtle>.freeze, ["< 4.0", ">= 2.2"])
      s.add_development_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<rdf-isomorphic>.freeze, ["< 4.0", ">= 2.0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<rdf-spec>.freeze, ["< 4.0", ">= 2.2"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    else
      s.add_dependency(%q<rdf>.freeze, ["< 4.0", ">= 2.2"])
      s.add_dependency(%q<ebnf>.freeze, [">= 1.0.1", "~> 1.0"])
      s.add_dependency(%q<rdf-turtle>.freeze, ["< 4.0", ">= 2.2"])
      s.add_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_dependency(%q<rdf-isomorphic>.freeze, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
      s.add_dependency(%q<rdf-spec>.freeze, ["< 4.0", ">= 2.2"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    end
  else
    s.add_dependency(%q<rdf>.freeze, ["< 4.0", ">= 2.2"])
    s.add_dependency(%q<ebnf>.freeze, [">= 1.0.1", "~> 1.0"])
    s.add_dependency(%q<rdf-turtle>.freeze, ["< 4.0", ">= 2.2"])
    s.add_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_dependency(%q<rdf-isomorphic>.freeze, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_dependency(%q<rdf-spec>.freeze, ["< 4.0", ">= 2.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
  end
end
