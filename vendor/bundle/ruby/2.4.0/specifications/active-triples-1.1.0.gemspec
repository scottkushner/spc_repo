# -*- encoding: utf-8 -*-
# stub: active-triples 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "active-triples".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Johnson".freeze, "Trey Terrell".freeze]
  s.date = "2018-06-28"
  s.description = "ActiveTriples provides tools for modeling RDF as discrete resources.".freeze
  s.email = "tom@curationexperts.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/ActiveTriples/ActiveTriples".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "RDF graphs in ActiveModel wrappers.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdf>.freeze, ["< 4.0", ">= 2.0.2"])
      s.add_runtime_dependency(%q<rdf-vocab>.freeze, ["< 4.0", ">= 2.0"])
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
      s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rdf-rdfxml>.freeze, ["< 4.0", ">= 2.0"])
      s.add_development_dependency(%q<rdf-turtle>.freeze, ["< 4.0", ">= 2.0"])
      s.add_development_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.0"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
      s.add_development_dependency(%q<pragmatic_context>.freeze, ["~> 0.1.2"])
    else
      s.add_dependency(%q<rdf>.freeze, ["< 4.0", ">= 2.0.2"])
      s.add_dependency(%q<rdf-vocab>.freeze, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<activemodel>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
      s.add_dependency(%q<rdf-spec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdf-rdfxml>.freeze, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<rdf-turtle>.freeze, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.8"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
      s.add_dependency(%q<pragmatic_context>.freeze, ["~> 0.1.2"])
    end
  else
    s.add_dependency(%q<rdf>.freeze, ["< 4.0", ">= 2.0.2"])
    s.add_dependency(%q<rdf-vocab>.freeze, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<activemodel>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    s.add_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
    s.add_dependency(%q<rdf-spec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdf-rdfxml>.freeze, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<rdf-turtle>.freeze, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<json-ld>.freeze, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
    s.add_dependency(%q<pragmatic_context>.freeze, ["~> 0.1.2"])
  end
end
