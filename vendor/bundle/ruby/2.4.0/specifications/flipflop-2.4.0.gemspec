# -*- encoding: utf-8 -*-
# stub: flipflop 2.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "flipflop".freeze
  s.version = "2.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Paul Annesley".freeze, "Rolf Timmermans".freeze, "Jippe Holwerda".freeze]
  s.date = "2018-04-26"
  s.description = "Declarative API for specifying features, switchable in declaration, database and cookies.".freeze
  s.email = ["paul@annesley.cc".freeze, "rolftimmermans@voormedia.com".freeze, "jippeholwerda@voormedia.com".freeze]
  s.homepage = "https://github.com/voormedia/flipflop".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "A feature flipflopper for Rails web applications.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
  end
end
