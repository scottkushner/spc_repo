# -*- encoding: utf-8 -*-
# stub: pul_uv_rails 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pul_uv_rails".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eliot Jordan".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-12-15"
  s.description = "Princeton University Library branded Universal Viewer for use in rails projects.".freeze
  s.email = ["eliot.jordan@gmail.com".freeze]
  s.homepage = "https://github.com/pulibrary/pul_uv_rails".freeze
  s.licenses = ["Apache2".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "PUL Universal Viewer for rails projects.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
  end
end
