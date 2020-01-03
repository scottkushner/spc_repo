# -*- encoding: utf-8 -*-
# stub: linkeddata 3.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "linkeddata".freeze
  s.version = "3.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Arto Bendiken".freeze, "Ben Lavender".freeze, "Gregg Kellogg".freeze, "Tom Johnson".freeze]
  s.date = "2018-02-10"
  s.description = "A metadistribution of RDF.rb including a full set of parsing/serialization plugins.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "http://ruby-rdf.github.com/".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Linked Data for Ruby.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<rdf-aggregate-repo>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_runtime_dependency(%q<rdf-isomorphic>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<rdf-json>.freeze, ["< 4.0", ">= 2.2"])
      s.add_runtime_dependency(%q<rdf-microdata>.freeze, ["< 4.0", ">= 2.2.3"])
      s.add_runtime_dependency(%q<rdf-n3>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<rdf-normalize>.freeze, [">= 0.3.3", "~> 0.3"])
      s.add_runtime_dependency(%q<rdf-rdfa>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<rdf-rdfxml>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_runtime_dependency(%q<rdf-reasoner>.freeze, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<rdf-tabular>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_runtime_dependency(%q<rdf-trig>.freeze, ["< 4.0", ">= 2.2"])
      s.add_runtime_dependency(%q<rdf-trix>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_runtime_dependency(%q<rdf-turtle>.freeze, [">= 3.0.1", "~> 3.0"])
      s.add_runtime_dependency(%q<rdf-vocab>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<rdf-xsd>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_runtime_dependency(%q<ld-patch>.freeze, [">= 0.3.3", "~> 0.3"])
      s.add_runtime_dependency(%q<shex>.freeze, [">= 0.5.2", "~> 0.5"])
      s.add_runtime_dependency(%q<sparql>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<sparql-client>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<nokogumbo>.freeze, ["~> 1.5"])
      s.add_runtime_dependency(%q<equivalent-xml>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.12"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<rdf>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdf-aggregate-repo>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_dependency(%q<rdf-isomorphic>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdf-json>.freeze, ["< 4.0", ">= 2.2"])
      s.add_dependency(%q<rdf-microdata>.freeze, ["< 4.0", ">= 2.2.3"])
      s.add_dependency(%q<rdf-n3>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdf-normalize>.freeze, [">= 0.3.3", "~> 0.3"])
      s.add_dependency(%q<rdf-rdfa>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdf-rdfxml>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_dependency(%q<rdf-reasoner>.freeze, ["~> 0.5.0"])
      s.add_dependency(%q<rdf-tabular>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_dependency(%q<rdf-trig>.freeze, ["< 4.0", ">= 2.2"])
      s.add_dependency(%q<rdf-trix>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_dependency(%q<rdf-turtle>.freeze, [">= 3.0.1", "~> 3.0"])
      s.add_dependency(%q<rdf-vocab>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdf-xsd>.freeze, ["~> 3.0"])
      s.add_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.2.1"])
      s.add_dependency(%q<ld-patch>.freeze, [">= 0.3.3", "~> 0.3"])
      s.add_dependency(%q<shex>.freeze, [">= 0.5.2", "~> 0.5"])
      s.add_dependency(%q<sparql>.freeze, ["~> 3.0"])
      s.add_dependency(%q<sparql-client>.freeze, ["~> 3.0"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
      s.add_dependency(%q<nokogumbo>.freeze, ["~> 1.5"])
      s.add_dependency(%q<equivalent-xml>.freeze, ["~> 0.6"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9.12"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_dependency(%q<rdf-spec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<rdf>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdf-aggregate-repo>.freeze, ["< 4.0", ">= 2.2.1"])
    s.add_dependency(%q<rdf-isomorphic>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdf-json>.freeze, ["< 4.0", ">= 2.2"])
    s.add_dependency(%q<rdf-microdata>.freeze, ["< 4.0", ">= 2.2.3"])
    s.add_dependency(%q<rdf-n3>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdf-normalize>.freeze, [">= 0.3.3", "~> 0.3"])
    s.add_dependency(%q<rdf-rdfa>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdf-rdfxml>.freeze, ["< 4.0", ">= 2.2.1"])
    s.add_dependency(%q<rdf-reasoner>.freeze, ["~> 0.5.0"])
    s.add_dependency(%q<rdf-tabular>.freeze, ["< 4.0", ">= 2.2.1"])
    s.add_dependency(%q<rdf-trig>.freeze, ["< 4.0", ">= 2.2"])
    s.add_dependency(%q<rdf-trix>.freeze, ["< 4.0", ">= 2.2.1"])
    s.add_dependency(%q<rdf-turtle>.freeze, [">= 3.0.1", "~> 3.0"])
    s.add_dependency(%q<rdf-vocab>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdf-xsd>.freeze, ["~> 3.0"])
    s.add_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.2.1"])
    s.add_dependency(%q<ld-patch>.freeze, [">= 0.3.3", "~> 0.3"])
    s.add_dependency(%q<shex>.freeze, [">= 0.5.2", "~> 0.5"])
    s.add_dependency(%q<sparql>.freeze, ["~> 3.0"])
    s.add_dependency(%q<sparql-client>.freeze, ["~> 3.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
    s.add_dependency(%q<nokogumbo>.freeze, ["~> 1.5"])
    s.add_dependency(%q<equivalent-xml>.freeze, ["~> 0.6"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.12"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_dependency(%q<rdf-spec>.freeze, ["~> 3.0"])
  end
end
