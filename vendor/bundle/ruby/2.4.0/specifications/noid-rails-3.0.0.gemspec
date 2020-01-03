# -*- encoding: utf-8 -*-
# stub: noid-rails 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "noid-rails".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael J. Giarlo".freeze]
  s.date = "2017-12-13"
  s.description = "Noid identifier services for Rails-based applications.".freeze
  s.email = ["leftwing@alumni.rutgers.edu".freeze]
  s.homepage = "https://github.com/samvera/noid-rails".freeze
  s.licenses = ["Apache2".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Noid identifier services for Rails-based applications".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>.freeze, ["< 6", ">= 5.0.0"])
      s.add_runtime_dependency(%q<noid>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<engine_cart>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 11"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.52.0"])
      s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.20.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    else
      s.add_dependency(%q<actionpack>.freeze, ["< 6", ">= 5.0.0"])
      s.add_dependency(%q<noid>.freeze, ["~> 0.9"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<engine_cart>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rake>.freeze, [">= 11"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.52.0"])
      s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.20.1"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>.freeze, ["< 6", ">= 5.0.0"])
    s.add_dependency(%q<noid>.freeze, ["~> 0.9"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<engine_cart>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake>.freeze, [">= 11"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.52.0"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.20.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
